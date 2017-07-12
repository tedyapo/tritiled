// Case for TritiLED V2.x

layout = "PRINTING";
//layout = "EXPLODED";

pcb_d = 28+1;
pcb_h = 5;
pcb_thickness = 1.6;
wire_gap = 3;

case_thickness = 2;

top_len = 5 + 1.6 + 3;
top_d = pcb_d + 2*case_thickness + 6;

cap_len = 5;
cap_hole_d1 = 5.2;
cap_hole_d2 = 40;

switch_offset = 10.75;
switch_d = 2.1;

bevel_height = 2;

epsilon = 0.1;

module chanzon_3W_LED()
{
  dome_d = 5;
  base_d = 7;
  base_h = 2;
  chip_size = 1.8;
  chip_thickness = 0.5;
  base_thickness = 1;
  difference(){
    color("white") cylinder($fn=23, d = base_d, h = base_h);
    translate([0, 0, base_thickness]){
      cylinder($fn=23, d = dome_d, h = base_h);
    }
  }
  translate([0, 0, base_h]){
    %sphere($fn=23, d = dome_d);
  }
  translate([-chip_size/2, -chip_size/2, base_thickness]){
    color("cyan") cube([chip_size, chip_size, chip_thickness]);
  }
}

module tritiled_pcb()
{
  color("purple") cylinder(d = pcb_d, h = pcb_thickness);
  translate([0, 0, pcb_thickness]){
    chanzon_3W_LED();
  }
}


module pcb_clearance(len = pcb_thickness)
{
  cylinder(d = pcb_d, h = len);

  batt_d = 23;
  batt_thickness = 4.5;
  batt_holder_w = 18;
  batt_holder_len = 25;

  translate([-batt_holder_w/2, -batt_holder_len/2, -batt_thickness]){
    cube ([batt_holder_w, batt_holder_len, len+2*epsilon]);
  }
  translate([0, 0, -batt_thickness]){
    cylinder(d = batt_d, h = batt_thickness);
  }

}

module cap(switch_hole = true)
{
  difference(){
    union(){
      rotate([0, 0, 0]){
        cylinder($fn = 12,
                 d = top_d,
                 h = cap_len - bevel_height);
      }
      translate([0, 0, cap_len - bevel_height]){
        rotate([0, 0, 0]){
          cylinder($fn = 12,
                   d1 = top_d,
                   d2 = top_d - 2 * bevel_height,
                   h = bevel_height);
        }
      }
    }

    if (switch_hole){
      rotate([0, 0, 360/12]){
        translate([switch_offset, 0, -epsilon]){
          cylinder($fn = 5, d = switch_d, h = cap_len);
        }
      }
    }


    translate([0, 0, -epsilon]){
      cylinder(d = cap_hole_d1,
               h = cap_len + 2*epsilon);
    }

    translate([0, 0, 1]){
      cylinder(d2 = cap_hole_d2,
               d1 = cap_hole_d1,
               h = cap_len + epsilon);
    }
    

    N = 6;
    screw_ring_d = (top_d + pcb_d)/2;
    screw_clearance_d = 4.5;
    screw_sink = 2.1;
    pilot_d = 2;
    for (th = [0:N]){
      translate([screw_ring_d/2 * cos(360*th/N + 0),
                 screw_ring_d/2 * sin(360*th/N + 0),
                 0]){
        translate([0, 0, -epsilon]){
          cylinder(d = pilot_d, h = cap_len + 2*epsilon);
        }
        translate([0, 0, cap_len - screw_sink]){
          rotate([0, 0, 360*th/N]){
            hull(){
              cylinder($fn=12, d = screw_clearance_d, h = cap_len);
              translate([4, 0, 0])
              cylinder($fn=12, d = screw_clearance_d, h = cap_len);
            }
          }
        }
      }
    }
  }
}

module bottom()
{
  difference(){
    union(){
      translate([0, 0, bevel_height]){
        rotate([0, 0, 0]){
          cylinder($fn = 12,
                   d = top_d,
                   h = top_len);
        }
      }
      translate([0, 0, 0]){
        rotate([0, 0, 0]){
          cylinder($fn = 12,
                   d2 = top_d,
                   d1 = top_d - 2*bevel_height,
                   h = bevel_height);
        }
      }
    }

    N = 6;
    screw_ring_d = (top_d + pcb_d)/2;
    pilot_d = 2;
    for (th = [0:N]){
      translate([screw_ring_d/2 * cos(360*th/N+30),
                 screw_ring_d/2 * sin(360*th/N+30),
                 case_thickness]){
        rotate([0, 0, 360*th/N+30]){
          cylinder($fn=3, d = pilot_d, h = top_len*2);
        }
      }
    }

    translate([0, 0, top_len + bevel_height - 1.6 - 3]){
      pcb_clearance(len = top_len*2);
    }
  }
}

if (layout == "PRINTING"){
  bottom();
  translate([40, 0, 0]){
    cap();
  }
} else {

  translate([-20, 0, 0])
  rotate([0, 90, 0]){
    bottom();
    translate([0, 0, 40]){
      cap();
    }
        translate([0, 0, 25]){
      tritiled_pcb();
    }
  }
}

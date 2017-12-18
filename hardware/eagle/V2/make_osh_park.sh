#!/bin/bash

BOARDS=(tritiled22 tritiled22_lux_c tritiled22_5630 tritiled22_lux_z tritiled22_xpe tritiled22_cr2477 tritiled22_cr2354_lux_c  tritiled22_cr2354_oslon tritiled22_cr2354_oslon_reverse tritiled22_cr2354_xpe_reverse tritiled22_cr2354_lux_c_reverse tritiled2x_programmer)
OSHP_FILES=(GTL GBL GTS GBS GTO GBO GKO DRL)
STENCIL_FILES=(GTP)


for BASE_NAME in ${BOARDS[@]}
do
    GERBER_DIR=../../gerbers/${BASE_NAME}
    echo processing ${BASE_NAME}
    
    # zip up gerbers required by OSH Park
    rm -f ${BASE_NAME}_gerbers.zip
    for FILE in ${OSHP_FILES[@]}
    do
        zip ${BASE_NAME}_gerbers.zip ${BASE_NAME}.${FILE}
        mv ${BASE_NAME}.${FILE} ${GERBER_DIR}
    done
    mv ${BASE_NAME}_gerbers.zip ${GERBER_DIR}

    # move gerbers needed for stencil
    for FILE in ${STENCIL_FILES[@]}
    do
        mv ${BASE_NAME}.${FILE} ${GERBER_DIR}
    done
done


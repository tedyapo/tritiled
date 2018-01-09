#!/bin/bash

BOARDS=(tritiled_v30 tritiled_v30_lux_c tritiled_v30_xpe tritiled_v30_oslon tritiled_v30_lux_c_reverse tritiled_v30_batt_pcb tritiled_v31_xpe tritiled_v31_oslon)
OSHP_FILES=(GTL GBL GTS GBS GTO GBO GKO XLN)
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


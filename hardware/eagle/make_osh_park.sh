#!/bin/bash

BOARDS=(tritiled22 tritiled2x_programmer)
FILES=(GTL GBL GTS GBS GTO GBO GKO DRL)


for BASE_NAME in ${BOARDS[@]}
do
    GERBER_DIR=../gerbers/${BASE_NAME}
    echo processing ${BASE_NAME}
    rm -f ${BASE_NAME}_gerbers.zip
    for FILE in ${FILES[@]}
    do
        zip ${BASE_NAME}_gerbers.zip ${BASE_NAME}.${FILE}
        mv ${BASE_NAME}.${FILE} ${GERBER_DIR}
    done
    mv ${BASE_NAME}_gerbers.zip ${GERBER_DIR}
done


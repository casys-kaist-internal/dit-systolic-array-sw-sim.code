#!/bin/bash

MODEL_NAME=$1 # dit-xl-512_b1
ARR_R=$2
ARR_C=$3

DIMS_NAME="${MODEL_NAME}_77"
./scripts/get_stats.sh $DIMS_NAME 77 $ARR_R $ARR_C
echo 77done

DIMS_NAME="${MODEL_NAME}_74"
./scripts/get_stats.sh $DIMS_NAME 74 $ARR_R $ARR_C
echo 74done

DIMS_NAME="${MODEL_NAME}_44"
./scripts/get_stats.sh $DIMS_NAME 44 $ARR_R $ARR_C
echo 44done

python get_stats_all.py $MODEL_NAME $ARR_R $ARR_C
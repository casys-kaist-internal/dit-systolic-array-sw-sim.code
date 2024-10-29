#!/bin/bash

MODEL_NAME=sd3-512_b1
ARR_SIZE=128

DIMS_NAME="${MODEL_NAME}_77"
./scripts/get_stats.sh $DIMS_NAME 77 $ARR_SIZE
python get_stats_one.py $DIMS_NAME 77 $ARR_SIZE
echo 77done

DIMS_NAME="${MODEL_NAME}_74"
./scripts/get_stats.sh $DIMS_NAME 74 $ARR_SIZE
python get_stats_one.py $DIMS_NAME 74 $ARR_SIZE
echo 74done

DIMS_NAME="${MODEL_NAME}_44"
./scripts/get_stats.sh $DIMS_NAME 44 $ARR_SIZE
python get_stats_one.py $DIMS_NAME 44 $ARR_SIZE
echo 44done

python get_stats_all.py $MODEL_NAME $ARR_SIZE
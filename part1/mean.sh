#!/bin/bash

echo "Mean of X: "
awk 'BEGIN { SUM=0; COUNT=0} {SUM+=$7; COUNT+=1} END {SUM/=COUNT; print SUM} ' 4HKD.pdb
echo "Mean of Y: "
awk 'BEGIN { SUM=0; COUNT=0} {SUM+=$8; COUNT+=1} END {SUM/=COUNT; print SUM} ' 4HKD.pdb
echo "Mean of X: "
awk 'BEGIN { SUM=0; COUNT=0} {SUM+=$9; COUNT+=1} END {SUM/=COUNT; print SUM} ' 4HKD.pdb

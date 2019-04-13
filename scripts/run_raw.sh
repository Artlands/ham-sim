#!/bin/bash

DMCPOWER=../dmc_power

TRACEFILE=/home/jieli/pipe

CFILE=../config.dmc

LD_LIBRARY_PATH=/home/jieli/gc64-hmcsim

export LD_LIBRARY_PATH

echo "Executing : $DMCPOWER -p $TRACEFILE -C $CFILE "

$DMCPOWER -p $TRACEFILE -C $CFILE

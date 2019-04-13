#!/bin/sh
#
# HMCSIM TEST APPLICATIONS
#
# TEST: DMC POWER
# ---------------------------------------
CFLAGS = -I/home/jieli/gc64-hmcsim/include/

CC = gcc

LIBS = -L/home/jieli/gc64-hmcsim -lhmcsim

SRC=./src

all: dmc_power

dmc_power: $(SRC)/dmc_power.o
	$(CC) $(CFLAGS) -o $@ $(SRC)/dmc_power.c $(LIBS)

cleanout:
	rm -Rf ./scripts/*.out ./scripts/*.tec
clean:
	rm -Rf ./dmc_power ./src/*.o

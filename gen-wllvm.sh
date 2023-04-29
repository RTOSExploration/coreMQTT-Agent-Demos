#!/usr/bin/env bash

DB=$RTOSExploration/bitcode-db/coreMQTT-Agent
rm -rf $DB

cd build/Cortex-M3_MPS2_QEMU_GCC
make clean
genbc $DB -c "make -j"

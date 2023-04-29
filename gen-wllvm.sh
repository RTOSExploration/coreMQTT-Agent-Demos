#!/usr/bin/env bash

#DB=$RTOSExploration/bitcode-db/coreMQTT-Agent
#rm -rf $DB

export LLVM_COMPILER=hybrid
export LLVM_COMPILER_PATH=/usr/lib/llvm-14/bin
export BINUTILS_TARGET_PREFIX=arm-none-eabi

cd build/Cortex-M3_MPS2_QEMU_GCC
make clean
make -j$(nproc) CC=wllvm
extract-bc output/RTOSDemo.elf

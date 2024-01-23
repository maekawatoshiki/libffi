#!/bin/sh -eux

export CC="$HOME/riscv/rv32/bin/riscv32-unknown-linux-gnu-gcc"
export CXX="$HOME/riscv/rv32/bin/riscv32-unknown-linux-gnu-g++"

./autogen.sh
./configure --prefix=$PWD/install --host=riscv32-unknown-linux-gnu
make -j$(nproc)
make install

#!/bin/bash

OUT=target/debug

rm -rf $OUT && mkdir -p $OUT

cc -o $OUT/double.o -c src/double.c
ar cq $OUT/libdouble.a $OUT/double.o
ar s $OUT/libdouble.a

# rustc --crate-name rust_to_c src/main.rs --out-dir $OUT -L native=$OUT -l double.o
rustc --crate-name rust_to_c src/main.rs --out-dir $OUT -L native=$OUT -l static=double

./$OUT/rust_to_c

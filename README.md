# NPB OMP 3.4.2 Nugget Protocol

This repository contains the protocol of Nugget of the NPB OMP benchmark.

## Table of contents

- [Problem and Solution](#problem-and-solution)

## Problem and Solution

### Cross-ISA compilation

#### Failed to recognize machine features

In order to the most optimized binary, the compile needs to know what features the machine has, such as hardware floating point support. Sometime, the compiler fails to detect them automatically. If this is the case, we need to manually select the features using `llc`.
For example, for Neoverse-n1, the llc command is `--mcpu=neoverse-n1 --march=aarch64 --float-abi=hard --mtriple=aarch64-unknown-linux-gnu -mattr='+fp-armv8,+neon,+v8a,+outline-atomics'`. 
We can get information about the features by using the compiler to compile something natively and get the actual compiler command by passing the `-v` flag.

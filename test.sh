#!/bin/bash
arm-linux-gcc -c hello.c -o hello
arm-linux-objcopy -O binary hello hello.bin

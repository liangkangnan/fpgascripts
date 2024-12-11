#!/bin/bash

# copy RTL source files(*.v)
../scripts/listfiles -f line $1 | xargs -i cp {} .

# copy RTL header files(*.vh)
../scripts/listfiles -f linei $1 | xargs -i find {} -name "*.vh" | xargs -i cp {} .

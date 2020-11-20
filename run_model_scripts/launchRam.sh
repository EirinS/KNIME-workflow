#!/bin/bash
docker rm -f ram_container
docker build -t ram .
docker run --name ram_container ram
docker cp ram_container:/fortran/tl.grid tl.grid
docker cp ram_container:/fortran/tl.line tl.line
ARG1=${1:-ram_output.txt}
echo $'outdata,tl.grid\noutloss,tl.line' > $ARG1
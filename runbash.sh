#!/bin/bash
ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
IMGNAME=$(head -n 1 .IMGNAME)
IMGVERSION=$(head -n 1 .IMGVERSION)
IMGVERSION=${IMGVERSION:-"latest"}
docker run --rm -ti $IMGNAME:$IMGVERSION $ENVBASH ${*:2}

#!/bin/bash
IMGVERSION=$(head -n 1 .IMGVERSION)
IMGVERSION=${IMGVERSION:-"latest"}
IMGNAME=$(head -n 1 .IMGNAME)
echo "Deploying $IMGNAME:$IMGVERSION ..."
docker push $IMGNAME:$IMGVERSION
echo "Done!"

#!/bin/bash 

docker run --rm \
  --gpus all \
  --name centroids-reid \
  -v "$PWD":/project \
  -w /project \
  -it centroids-reid:latest bash

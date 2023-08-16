#!/bin/bash
mkdir input
#docker rm gaze
docker run -it --runtime=nvidia --gpus all -v $(pwd)/input:/root/input -v $(pwd):/root/attention-target-detection_repo/docker-interface --name gaze attention-target-detection /bin/bash
#docker run -it --runtime=nvidia --gpus all -v $(pwd)/input:/root/input --name gaze attention-target-detection /bin/bash

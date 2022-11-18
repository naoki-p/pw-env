#!/bin/bash
docker run -it --rm --ipc=host --user pwuser --security-opt seccomp=seccomp_profile.json --volume $(pwd)/app:/home/pwuser/app --env DISPLAY=$DISPLAY --volume /tmp/.X11-unix:/tmp/.X11-unix pw:1.0 bash

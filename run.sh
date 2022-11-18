#!/bin/bash
docker run -it --rm --ipc=host --user pwuser --security-opt seccomp=seccomp_profile.json --volume $(pwd)/app:/home/pwuser/app pw:1.0 bash

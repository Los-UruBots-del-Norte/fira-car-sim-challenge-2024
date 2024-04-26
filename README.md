# Description

This repository contains a link to a virtual hard drive containing everything
needed to start developing in the simulator environment of the FIRA 2024 autonmous car simulation challenge. Also includes Docker image, but GPU support can become complicated for AMD graphics. 

# Instructions
## Setup for virtual machine
1. Download vhd from following link: https://drive.google.com/file/d/1X8k44qa_w7FFSCILIbQ-8piBYmu2TQ1z/view?usp=sharing
2. Install Virtual Box (or other preferred software)
3. Create VM with downloaded vhd. Should have at least 8gb ram and tick the checkbox of 3D GPU support
4. Login with ubuntu:ubuntu
5. Follow starting instructions from original repository: https://github.com/Fira-Autonomous-Cars/FIRA-Autonomous-Cars-Simulator
6. Start developing with example controller in `/home/ubuntu/fira_car_challenge/controllers/example` by entering:
`$ source simulator/bin/activate` and `$ python3 example_move_forward`
## Setup with Dockerfile
1. cd into Docker/
2. build image
3. start image (remember to allow X11 server to interact with Docker, by: `$ xhost +local:docker`, otherwise you won't see a GUI)
4. Usage examples in Docker/README.md


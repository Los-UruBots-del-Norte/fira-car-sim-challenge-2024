#!/bin/sh

docker build -t my_ros_image .

echo "Remember to allow X11 server to interact with Docker, by: $ xhost +local:docker"

# Useful commands
## Build image
`$ docker build -t <DOCKER_IMAGE_NAME> .`
## Get available ROS topics
`$ docker run -it --net=host <DOCKER_IMAGE_NAME> bash -c "source /opt/ros/noetic/setup.bash && source ~/catkin_ws/devel/setup.bash && rostopic list"`
## Start container with gazebo and ros with simple race track
`$ docker run -it \
--net=host \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
<DOCKER_IMAGE_NAME> bash -c "source /opt/ros/noetic/setup.bash && source ~/catkin_ws/devel/setup.bash && roslaunch avisengine_environment track_race_simple.launch"`
## Start container with gazebo and ros with urban track
`$ docker run -it \
--net=host \
my_ros_image bash -c "source /opt/ros/noetic/setup.bash && source ~/catkin_ws/devel/setup.bash && roslaunch catvehicle_tests cmdvel_unsafetest.launch"`



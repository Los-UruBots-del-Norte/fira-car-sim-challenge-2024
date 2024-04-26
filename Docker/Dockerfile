# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Set non-interactive mode
ENV DEBIAN_FRONTEND=noninteractive

# Install ROS Noetic and git
RUN apt-get update && apt-get install -y \
    gnupg2 \
    lsb-release \
    git \
    && rm -rf /var/lib/apt/lists/*

# Setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros1-latest.list

# Setup keys
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

# Update apt and install ROS Noetic
RUN apt-get update && apt-get install -y \
    ros-noetic-desktop-full \
    && rm -rf /var/lib/apt/lists/*

# Install additional packages
RUN apt-get update && apt-get install -y \
    python3-catkin-tools \
    python3-catkin-pkg \
    python3-osrf-pycommon \
    ros-noetic-can-msgs \
    ros-noetic-velocity-controllers \
    ros-noetic-velodyne-pointcloud \
    ros-noetic-teleop-twist-keyboard \
    ros-noetic-gazebo-ros \
    ros-noetic-gazebo-ros-control \
    ros-noetic-gazebo-ros-pkgs \
    ros-noetic-hector-gazebo-plugins \
    ros-noetic-hector-gazebo-worlds \
    ros-noetic-hector-gazebo \
    ros-noetic-ros-controllers \
    && rm -rf /var/lib/apt/lists/*

# Source ROS Noetic
RUN /bin/bash -c "source /opt/ros/noetic/setup.bash"

# Create a Catkin workspace
RUN mkdir -p ~/catkin_ws/src \
    && cd ~/catkin_ws \
    && /bin/bash -c "source /opt/ros/noetic/setup.bash && catkin_make"

# Clone the repository
RUN cd ~/catkin_ws/src \
    && git clone https://github.com/Fira-Autonomous-Cars/FIRA-Autonomous-Cars-Simulator.git

# Build the workspace
RUN cd ~/catkin_ws \
    && /bin/bash -c "source /opt/ros/noetic/setup.bash && catkin_make"

# Set up environment
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
RUN echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc



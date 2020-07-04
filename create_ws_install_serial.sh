#!/bin/bash

# this script sources and create a new catkin_ws and then install dependicies for rosserial 


if [[ "${UID}" -ne 0 ]]
then 
  echo 'Please run as sudo'
  exit 1 
 fi 
 
 source /opt/ros/kinetic/setup.bash
 
 mkdir -p ~/catkin_ws/src 
 
 cd ~/catkin_ws/
 
 
 catkin_make
 
 
 
 source devel/setup.bash 
 
 
 echo $ROS_PACKAGE_PATH
 
sudo apt-get install ros-kinetic-rosserial-arduino


sudo apt-get install ros-kinetic-rosserial



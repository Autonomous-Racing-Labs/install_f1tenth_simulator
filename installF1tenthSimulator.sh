#!/bin/bash

#create directory
mkdir ~/f1tenth
cd ~/f1tenth

#install f1tenth simulator
git clone https://github.com/f1tenth/f1tenth_gym
cd f1tenth_gym
pip3 install -e .


#install ros workspace
cd ~/f1tenth
git clone https://github.com/Autonomous-Racing-Labs/f1tenth_racecar_ws.git
cd f1tenth_racecar_ws
git submodule update --init --remote --merge --recursive
pip3 install transforms3d


#build workspace
source /opt/ros/iron/setup.bash
colcon build
source install/setup.sh


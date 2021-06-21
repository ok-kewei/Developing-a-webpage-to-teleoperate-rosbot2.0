# Developing-a-webpage-to-teleoperate-rosbot2.0

Created a webpage to teleoperate-rosbot 2.0 by using html + javascript + css

To create a Ros Environment [Command in terminal]

1. Prerequisite: 
- A laptop/PC with Ubuntu 18.04
- ROS Melodic with RVIZ, Gazebo installed


2. Simulation Robot: ROSBOT2.0 
2.1 Installation of ROSbot2.0 simulation model (Gazebo)


A. Prepare the repository: 

cd ~
mkdir catkin_ws_web
mkdir catkin_ws_web/src
cd ~/catkin_ws_web/src
catkin_init_workspace
cd ~/catkin_ws_web
catkin_make

B. Clone this repository to your workspace:
cd ~/catkin_ws_web/src
git clone https://github.com/husarion/rosbot_description.git

C. Install dependencies:
cd ~/catkin_ws_web
rosdep install --from-paths src --ignore-src -r -y

D. Build the workspace:
cd ~/catkin_ws_web
catkin_make

From this moment you can use rosbot simulations. Please remember that each time, when you open new terminal window, you will need to load system variables:
source ~/catkin_ws_web/devel/setup.sh

E. To launch the Gazebo simulation: 
roslaunch rosbot_description rosbot_rviz_gmapping.launch

You can run ‘rostopic list’ in terminal to see the topic that is currently running. 


3. Installtion of Rosbridge & Ros Web Server (if you haven't installed)
3.1 Installation of ROS Bridge

Go to src folder that created, 
cd ~/catkin_ws_web/src
sudo apt-get install ros-melodic-rosbridge-server

3.2 Installation of ROS Web Server

cd ~/catkin_ws_web/src
sudo apt-get install ros-melodic-web-video-server

4. Establish ROS bridge and Web Video Server  
A. Open a terminal, after running the simulation that mentioned in Step 2E, establish the ROS Bridge, to launch the web sockets to allow web apps to publish or subscribe ROS messages.  

B. Open a new terminal, run roslaunch rosbridge_server rosbridge_websocket.launch  

C. Open a new terminal, rosrun web_video_server web_video_server. Output: go to a browser and type localhost:8080  

D. Open the index.html file (under src folder)



# Install script for directory: /home/kewei/catkin_ws_web/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/kewei/catkin_ws_web/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kewei/catkin_ws_web/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kewei/catkin_ws_web/install" TYPE PROGRAM FILES "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kewei/catkin_ws_web/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kewei/catkin_ws_web/install" TYPE PROGRAM FILES "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kewei/catkin_ws_web/install/setup.bash;/home/kewei/catkin_ws_web/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kewei/catkin_ws_web/install" TYPE FILE FILES
    "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/setup.bash"
    "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kewei/catkin_ws_web/install/setup.sh;/home/kewei/catkin_ws_web/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kewei/catkin_ws_web/install" TYPE FILE FILES
    "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/setup.sh"
    "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kewei/catkin_ws_web/install/setup.zsh;/home/kewei/catkin_ws_web/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kewei/catkin_ws_web/install" TYPE FILE FILES
    "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/setup.zsh"
    "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/kewei/catkin_ws_web/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/kewei/catkin_ws_web/install" TYPE FILE FILES "/home/kewei/catkin_ws_web/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/kewei/catkin_ws_web/build/gtest/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/ros_astra_launch/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_desktop/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_robot/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_simulator/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbridge_suite/rosapi/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbridge_suite/rosbridge_suite/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_msgs/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbridge_suite/rosbridge_msgs/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/teleop_twist_keyboard/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3/turtlebot3/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3/turtlebot3_navigation/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3_simulations/turtlebot3_simulations/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_bringup/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_control/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_description/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_gazebo/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_navigation/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_viz/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbridge_suite/rosbridge_server/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky/husky_base/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/husky_highlevel_controller/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/ros_astra_camera/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbridge_suite/rosbridge_library/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/robot_gui_bridge/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3/turtlebot3_bringup/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3/turtlebot3_example/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3_simulations/turtlebot3_fake/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3_simulations/turtlebot3_gazebo/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3/turtlebot3_slam/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3/turtlebot3_teleop/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbot_description/src/rosbot_navigation/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbot_description/src/rosbot_description/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/rosbot_description/src/rosbot_gazebo/cmake_install.cmake")
  include("/home/kewei/catkin_ws_web/build/turtlebot3/turtlebot3_description/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/kewei/catkin_ws_web/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

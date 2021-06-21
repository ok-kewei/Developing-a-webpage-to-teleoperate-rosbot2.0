execute_process(COMMAND "/home/kewei/catkin_ws_web/build/rosbridge_suite/rosbridge_library/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kewei/catkin_ws_web/build/rosbridge_suite/rosbridge_library/catkin_generated/python_distutils_install.sh) returned error code ")
endif()

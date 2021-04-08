cmake_minimum_required(VERSION 3.14)
project(stereovision_sgm)

set(CMAKE_CXX_STANDARD 14)

add_executable(stereovision_sgm stereo_cpp.cpp src/stereovision.cpp)

# == OpenCV (3.4.5.0) / (4.0.1) configuration ==
# Where to find CMake modules and OpenCV
set(OpenCV_DIR "/opt/opencv/built")  #check path
#set(OPENCV_EXTRA_MODULES_PATH "/opt/opencv/opencv_contrib/modules/")  #check path

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O0")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0")


find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# Add libs you need
set(OpenCV_LIBS opencv_core opencv_imgproc opencv_highgui opencv_imgcodecs)


target_link_libraries(stereovision_sgm ${OpenCV_LIBS})

cmake_minimum_required(VERSION 3.10)


project(BMPtoYUV)

#sử dụng chuẩn c++11
set(CMAKE_CXX_STANDARD 11)

#Ensure c++11 is strictly enforced
#If the compiler does not support c++11, the congiduration will fail.
set(CMAKE_CXX_STANDARD_REQUIRED True)

#Define the executable target for the project
add_executable(BMPtoYUV
    main.cpp
    bmp.cpp
    bmp.h
    yuv.h
    yuv.cpp
)
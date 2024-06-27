#pragma once
#include <vector>
#include <string>
#include "bmp.h"

//Declaring the function readYUVFile takes a file name and returns a vector containing YUV data read from the file
std::vector<uint8_t> readYUVFile(const std::string& filename);

//Declare writeYUVFile function to write YUV data to file
void writeYUVFile(const std::string& filename, const std::vector<uint8_t>& yuv);

//Declare function RGBtoYUV420 to format RGB in BMP to YUV420 format
void RGBtoYUV420(const BMP& bmp, std::vector<uint8_t>& yuv);

//Declare the overlayBMPonYUV function to overlay BMP data onto the YUV frame at the position determined by posX and posY
void overlayBMPonYUV(uint8_t* yuvFrame, const std::vector<uint8_t>& bmpYUV, int videoWidth, int videoHeight, int bmpWidth, int bmpHeight, int posX, int posY);
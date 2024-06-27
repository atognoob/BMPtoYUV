#include "yuv.h"
#include <fstream>
#include <stdexcept>

std::vector<uint8_t> readYUVFile(const std::string& filename) {
    //Open the file in binary mode and read from the end of the file
    std::ifstream file(filename, std::ios::binary | std::ios::ate);

    //Check if the file is open or not
    if (!file.is_open()) {
        throw std::runtime_error("Cannot open file " + filename);
    }

    //Get file size
    std::streamsize fileSize = file.tellg();

    //Place the file reading pointer to the beginning of the file
    file.seekg(0, std::ios::beg);

    //Tạo 1 vector buffer với kích thước bằng kích thuớc file
    std::vector<uint8_t> buffer(fileSize);

    //Read data from file into buffer
    if (!file.read(reinterpret_cast<char*>(buffer.data()), fileSize)) {
        throw std::runtime_error("Error reading file " + filename);
    }

    //Returns buffer containing YUV data
    return buffer;
}

void writeYUVFile(const std::string& filename, const std::vector<uint8_t>& yuv) {
    //open file in binary write mode
    std::ofstream file(filename, std::ios::binary);

    //Check if the file is open or not
    if (!file.is_open()) {
        throw std::runtime_error("Cannot open file " + filename);
    }
    //Write YUV data from yuv to file
    file.write(reinterpret_cast<const char*>(yuv.data()), yuv.size());
}

void RGBtoYUV420(const BMP& bmp, std::vector<uint8_t>& yuv) {
    int width = bmp.infoHeader.width;       //bmp image width
    int height = bmp.infoHeader.height;     //image height bmp
    int yIndex = 0;
    //number of samples Y = w*h
    int uIndex = width * height;
    //number of samples U = number of samples V = number of samples Y /4
    int vIndex = uIndex + (width * height) / 4;

    for (int j = height - 1; j>=0;j--) {
        for (int i = 0; i < width; i++) {
            //get red, green, blue color values ​​from BMP data
            int r = bmp.data[(j * width + i) * 3 + 2];
            int g = bmp.data[(j * width + i) * 3 + 1];
            int b = bmp.data[(j * width + i) * 3];

            //Convert RGB values ​​to YUV
            int y = (0.299 * r + 0.587 * g + 0.114 * b);
            int u = (-0.147 * r - 0.289 * g + 0.436 * b) + 128;
            int v = (0.615 * r - 0.515 * g - 0.100 * b) + 128;
            
            //Assign the y value to the yuv vector
            yuv[yIndex++] = y;

            //If coordinates (i,j) are even, store U and V values
            if (j % 2 == 0 && i % 2 == 0) {
                yuv[uIndex++] = u;
                yuv[vIndex++] = v;
            }
        }
    }
}

void overlayBMPonYUV(uint8_t* yuvFrame, const std::vector<uint8_t>& bmpYUV, int videoWidth, int videoHeight, int bmpWidth, int bmpHeight, int posX, int posY) {
    int bmpYIndex, bmpUIndex, bmpVIndex;

    for (int j = 0; j < bmpHeight; j++) {
        for (int i = 0; i < bmpWidth; i++) {
            //Index in YUV frame at position (i, j) of BMP.
            int yFrameIndex = (j + posY) * videoWidth + (i + posX);
            int uFrameIndex = videoWidth * videoHeight + ((j + posY) / 2) * (videoWidth / 2) + ((i + posX) / 2);
            int vFrameIndex = uFrameIndex + (videoWidth * videoHeight) / 4;

            //Calculate index in BMP YUV data
            bmpYIndex = j * bmpWidth + i;
            bmpUIndex = bmpWidth * bmpHeight + (j / 2) * (bmpWidth / 2) + (i / 2);
            bmpVIndex = bmpUIndex + (bmpWidth * bmpHeight) / 4;

            // Check for a valid location before copying data
            if (yFrameIndex < videoWidth * videoHeight && uFrameIndex < videoWidth * videoHeight * 5 / 4 && vFrameIndex < videoWidth * videoHeight * 3 / 2) {
                yuvFrame[yFrameIndex] = bmpYUV[bmpYIndex];
                yuvFrame[uFrameIndex] = bmpYUV[bmpUIndex];
                yuvFrame[vFrameIndex] = bmpYUV[bmpVIndex];
            }
        }
    }
}


#include "bmp.h"
#include <fstream>
#include <stdexcept>

//The readBMP function takes the BMP file name and returns a read BMP object
BMP readBMP(const std::string& filename) {

    //Open the file with the filename passed in binary mode
    std::ifstream inp(filename, std::ios::binary);
    
    //Check if the file opened successfully or not
    if (!inp) {
        throw std::runtime_error("Cannot open file: " + filename);
    }   

    //initialize BMP object to contain data read from file
    BMP bmp;

    //read the header of the BMP file
    inp.read(reinterpret_cast<char*>(&bmp.header), sizeof(bmp.header));

    //Check standard BMP file format
    if (bmp.header.file_type != 0x4D42) {
        throw std::runtime_error("Error! Unrecognized file format.");
    }
    //Read the info section of the BMP file
    inp.read(reinterpret_cast<char*>(&bmp.infoHeader), sizeof(bmp.infoHeader));

    //Check bits/pixel
    if (bmp.infoHeader.bit_count != 24){
        throw std::runtime_error("Error! Bit Count is bigger than 24 bits per pixel");
    }
    //Check if the BMP file is compressed
    if (bmp.infoHeader.compression != 0){
        throw std::runtime_error("Error! File uncompressed");
    }

    //Resize vector bmp.data to contain image data
    bmp.data.resize(bmp.infoHeader.width * bmp.infoHeader.height * bmp.infoHeader.bit_count / 8);

    //Move the file pointer to the starting position of the image data, stored in bmp.offset_data
    inp.seekg(bmp.header.offset_data, inp.beg);

    //Read image data from file into vector bmp.data
    inp.read(reinterpret_cast<char*>(bmp.data.data()), bmp.data.size());

    return bmp;
}
#include <iostream>
#include "bmp.h"
#include "yuv.h"

void printBMPInfo(const BMP& bmp) {
    std::cout << "BMP File Info:" << std::endl;
    std::cout << "File Size: " << bmp.header.file_size << " bytes" << std::endl;
    std::cout << "Image Width: " << bmp.infoHeader.width << " pixels" << std::endl;
    std::cout << "Image Height: " << bmp.infoHeader.height << " pixels" << std::endl;
    std::cout << "Bit Count: " << bmp.infoHeader.bit_count << " bits per pixel" << std::endl;
    std::cout << "Compression: " << (bmp.infoHeader.compression == 0 ? "None" : "Compressed") << std::endl;
    std::cout << std::endl;
}

void printYUVInfo(int width, int height, int frameSize, size_t totalSize){
    std::cout << "YUV File Info:" << std::endl;
    std::cout << "Frame Width: " << width << " pixels" << std::endl;
    std::cout << "Frame Height: " << height << " pixels" << std::endl;
    std::cout << "Frame Size: " << frameSize << " bytes" << std::endl;
    std::cout << "Total File Size: " << totalSize << " bytes" << std::endl;
    std::cout << "Number of Frames: " << totalSize / frameSize << std::endl;
    std::cout << std::endl;
}

int main(int argc, char** argv) {
    if (argc != 8){
        std::cerr << "Usage: " << argv[0] << " <input_yuv> <input_bmp> <output_yuv> <width> <height> <x> <y>" << std::endl;
        return 1;
    }

    std::string inputYUV = argv[1];
    std::string inputBMP = argv[2];
    std::string outputYUV = argv[3];
    int width = std::stoi(argv[4]);
    int height = std::stoi(argv[5]);
    int posX = std::stoi(argv[6]);
    int posY = std::stoi(argv[7]);

    //Reads the input BMP file and stores the information in the bmp variable using the readBMP function.
    BMP bmp = readBMP(inputBMP);
    //Prints the information of the BMP file for checking and verification.
    printBMPInfo(bmp);

    //Calculates the size of one YUV420 frame
    int frameSize = width * height * 3 /2;

    //Reads the data from the input YUV file and stores it in the yuvData vector.
    std::vector<uint8_t> yuvData = readYUVFile(inputYUV);

    //Prints the information of the YUV file
    printYUVInfo(width, height, frameSize, yuvData.size());

    // Check BMP image size and YUV frame
    if (bmp.infoHeader.width > width || bmp.infoHeader.height > height) {
        std::cerr << "Error! BMP image size is larger than YUV frame size." << std::endl;
        return 1;
    }


    //Creates a bmpYUV vector to store the YUV data of the BMP with the appropriate size.
    std::vector<uint8_t> bmpYUV(bmp.infoHeader.width * bmp.infoHeader.height * 3 / 2);

    //Converts the BMP data from RGB to YUV420 and stores it in bmpYUV using the RGBtoYUV420 function.
    RGBtoYUV420(bmp, bmpYUV);

    //Calculates the number of frames in the input YUV file.
    size_t numFrames = yuvData.size() / frameSize;

    //Check position image in yuv file
    if (posX < width - bmp.infoHeader.width || posY < height - bmp.infoHeader.height){
        //Iterates through each frame and overlays the BMP data onto the YUV frame at the specified position:
        for (size_t i = 0; i < numFrames; ++i) {
            //offset is the starting position of the current frame in the YUV data.
            size_t offset = i * frameSize;

            //Calls the overlayBMPonYUV function to overlay the converted BMP image onto the YUV frame.
            overlayBMPonYUV(yuvData.data() + offset, bmpYUV, width, height, bmp.infoHeader.width, bmp.infoHeader.height, posX, posY);
        }
        std::cout << "Successfull!!" << std::endl;

        //Writes the modified YUV data (with the BMP overlay) to the output YUV file.
        writeYUVFile(outputYUV, yuvData);
    } else {
        std::cout << "Error! Wrong input position for image" << std::endl;
    }
    
    return 0;
}
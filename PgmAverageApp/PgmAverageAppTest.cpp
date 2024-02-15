#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <filesystem>
#include <memory>
#include "include/reader/PgmImageReader.h"
#include "include/writer/PgmImageWriter.h"
#include "include/model/PgmImage.h"
#include "include/model/PgmAverageImage.h"

using namespace std;
using namespace PgmAverageCalculator;

int testPgmFileReader();

int main(int argc, char* argv[])
{
    return testPgmFileReader();
    //similar to this the writer and the merger class can also be tested
}

int testPgmFileReader() {
    unique_ptr<PgmImageReader> pgmImageReader = unique_ptr<PgmImageReader>(new PgmImageReader());
    unique_ptr<PgmImage<uint16_t>> pgmImage = unique_ptr<PgmImage<uint16_t>>(new PgmImage<uint16_t>());

    string file = "C:\\Personal_Stuff\\Pgm\\PgmAverageApp\\TestPgmFile.txt";
    pgmImageReader->readPgmFile(file, pgmImage);
    
    if (pgmImage == NULL) {
        cout << "Image is null!";
        return 1;
    }    

    if (*pgmImage->getPgmImageHeader()->getImageHeight() != 2) {
        cout << "Height is not matching!";
        return 1;
    }

    if (*pgmImage->getPgmImageHeader()->getImageWidth() != 2) {
        cout << "Width is not matching!";
        return 1;
    }

    if (*pgmImage->getPgmImageHeader()->getRatio() != 4096) {
        cout << "Ratio is not matching!";
        return 1;
    }

    if (pgmImage->getPixelValue(0) != 1420 || 
        pgmImage->getPixelValue(1) != 1520 ||
        pgmImage->getPixelValue(2) != 1540 ||
        pgmImage->getPixelValue(3) != 1560) {
        cout << "Pixels not correct!";
        return 1;
    }

    return 0;
}
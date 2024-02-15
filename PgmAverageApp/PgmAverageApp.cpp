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

void readPgmFiles(const string& directoryPath, const unique_ptr<PgmAverageImage> &pgmAverageImage);
void writePgmFile(const string& directoryPath, const unique_ptr<PgmAverageImage>& pgmAverageImage);

int main(int argc, char* argv[])
{
    unique_ptr<PgmAverageImage> pgmAverageImage = unique_ptr<PgmAverageImage> (new PgmAverageImage());

    if (argc != 2) {
        cout << "There has to be one command line argument with the path to the pgm files!";
        return 0;
    }

    string directoryPath = argv[1];

    if (!filesystem::exists(directoryPath)) {
        cout << "Specified directory does not exist! " << directoryPath << endl;
        return 0;
    }

    readPgmFiles(directoryPath, pgmAverageImage);
    writePgmFile(directoryPath, pgmAverageImage);

    return 0;
}

void readPgmFiles(const string& directoryPath, const unique_ptr<PgmAverageImage> &pgmAverageImage) {
    unique_ptr<PgmImageReader> pgmImageReader = unique_ptr<PgmImageReader>(new PgmImageReader());
    unique_ptr<PgmImage<uint16_t>> pgmImage = unique_ptr<PgmImage<uint16_t>>(new PgmImage<uint16_t>());

    cout << "Reading directory: " << directoryPath << endl;

    for (const auto & entry : filesystem::directory_iterator(directoryPath)) {
        string fileName = entry.path().u8string();
        
        try {
            cout << "Reading file " << fileName << endl;
            pgmImageReader->readPgmFile(fileName, pgmImage);
            cout << "Merging file " << fileName << endl;
            pgmAverageImage->mergeImage(pgmImage);
        }
        catch (invalid_argument e) {
            cout << e.what() << endl;
        }
    }
}

void writePgmFile(const string& directoryPath, const unique_ptr<PgmAverageImage>& pgmAverageImage) {
    unique_ptr<PgmImageWriter> pgmImageWriter = unique_ptr<PgmImageWriter>(new PgmImageWriter());

    wchar_t separator = filesystem::path::preferred_separator;    
    string outFileName = directoryPath + static_cast<char>(separator) + "Average.pgm";
    
    try {
        pgmImageWriter->writePgmFile(outFileName, pgmAverageImage);
    }
    catch (invalid_argument e) {
        cout << e.what() << endl;
    }
}

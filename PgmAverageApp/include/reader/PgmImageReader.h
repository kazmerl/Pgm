#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include <string>
#include <sstream>
#include "../model/PgmImage.h"

using namespace std;

namespace PgmAverageCalculator {

//Reads P2 pgm file type
//For P5 pgm file the checkType and readContent functions must be overwritten accordingly
class PgmImageReader {

  private:
    void getNextLine(ifstream& ifs, string& line);
    void handleFailedRead(istringstream& iss);
    void readHeader(ifstream& ifs, const shared_ptr<PgmImageHeader> &pgmImageHeader);
    void eraseComment(string& line) const;

  protected:
    bool checkType(ifstream& ifs) const noexcept;
    
    template <typename T> void readContent(ifstream& ifs, const unique_ptr<PgmImage<T>> &pgmImage) {
      size_t pixelCount = *pgmImage->getPgmImageHeader()->getImageHeight() * *pgmImage->getPgmImageHeader()->getImageWidth();
      size_t idx=0;
      while(!ifs.eof())
      {
        string line;
        getNextLine(ifs, line);
        if (line.empty()) {continue;};

        size_t pixel;
        istringstream iss(line);
        while(!iss.eof())
        {
          iss >> pixel;
          if(iss.fail())
          {
            handleFailedRead(iss);
          }
          else
          {
            if(idx >= pixelCount)
            {
              throw invalid_argument("More pixels than the specified width and height!");
            }
            pgmImage->addPixel(static_cast<T>(pixel));
            idx++;
          }
        }        
      }

      if (idx != pixelCount) {
        throw invalid_argument("Less pixels than the specified width and height!");
      }
    }
  
  public:
    template <typename T> void readPgmFile(string& fileNameWithPath, const unique_ptr<PgmImage<T>> &pgmImage) {
      ifstream ifs(fileNameWithPath);
    
      if(!ifs.good()) {
        throw invalid_argument("Introduced filename does not exist: " + fileNameWithPath);
      }

      if (!checkType(ifs)) {
        throw invalid_argument("Invalid pgm type file: " + fileNameWithPath);
      }

      try {
        readHeader(ifs, pgmImage->getPgmImageHeader());
        pgmImage->initPixelVector();

        readContent(ifs, pgmImage);
      }
      catch (invalid_argument e) {
        throw invalid_argument(e.what());
      }
    }

};

}

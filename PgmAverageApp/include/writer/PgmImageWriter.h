#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include <string>
#include "../model/PgmAverageImage.h"

using namespace std;

namespace PgmAverageCalculator {

//Writes P2 pgm file type
//For P5 type the writeType and writeContent functions must be overwritten accordingly
class PgmImageWriter {

  private:
    void writeHeader(ofstream& ofs, const shared_ptr<PgmImageHeader> &pgmImageHeader) const;    

  protected:
    void writeType(ofstream& ofs) const;
    void writeContent(ofstream& ofs, const unique_ptr<PgmAverageImage> &pgmAverageImage) const;
  
  public:
    void writePgmFile(string fileNameWithPath, const unique_ptr<PgmAverageImage> &pgmAverageImage) const;
};

}
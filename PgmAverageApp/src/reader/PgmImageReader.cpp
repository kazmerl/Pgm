#include <fstream>
#include <sstream>
#include <algorithm>
#include "../../include/reader/PgmImageReader.h"

using namespace std;

namespace PgmAverageCalculator {
  
  bool PgmImageReader::checkType(ifstream& ifs) const noexcept {
  char desc[2] = {'\0', '\0'};
  ifs.read(desc, 2);  
  
  if (desc[0] != 'P') {
    return false;
  }
  
  if (desc[1] != '2')
  {
    return false;
  }

  return true;
 }
    
  void PgmImageReader::readHeader(ifstream& ifs, const shared_ptr<PgmImageHeader> &pgmImageHeader) {
    bool  readX(false), readY(false), readRatio(false);

    while(!ifs.eof())
    {
        string line;
        getNextLine(ifs, line);
        if (line.empty()) {continue;};

        size_t values;
        istringstream iss(line);
        while(!iss.eof())
        {
            iss >> values;
            if(iss.fail())
            {
              handleFailedRead(iss);
            }
            else
            {
              if(!readX){(*pgmImageHeader).setImageWidth(values); readX = true; continue;}
              if(!readY){(*pgmImageHeader).setImageHeight(values); readY = true; continue;}
              if(!readRatio){(*pgmImageHeader).setRatio(values); readRatio = true; continue;}
            }
        }
        if(readX && readY && readRatio) {break;}
    }
  }

  void PgmImageReader::eraseComment(string& line) const {
    line.erase(std::find(line.begin(), line.end(), '#'), line.end());
  }

  void PgmImageReader::getNextLine(ifstream& ifs, string& line) {    
    getline(ifs, line);
    eraseComment(line);
  }

  void PgmImageReader::handleFailedRead(istringstream& iss) {
    string invalidLine;
    iss >> invalidLine;
    if(!all_of(invalidLine.begin(), invalidLine.end(), [](const char c){
      return isspace(static_cast<int>(c));
    }))
    {
      throw invalid_argument("Invalid pgm type!");
    }
  }
}
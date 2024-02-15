#include <iostream>
#include <fstream>
#include <sstream>
#include <algorithm>
#include "../../include/writer/PgmImageWriter.h"

using namespace std;

namespace PgmAverageCalculator {

void PgmImageWriter::writeType(ofstream& ofs) const {
  ofs << "P2\n";
}

void PgmImageWriter::writeHeader(ofstream& ofs, const shared_ptr<PgmImageHeader> &pgmImageHeader) const {
  ofs << *pgmImageHeader->getImageHeight() << " " << *pgmImageHeader->getImageWidth() << "\n";
  ofs << *pgmImageHeader->getRatio() << "\n";
}
  
void PgmImageWriter::writeContent(ofstream& ofs, const unique_ptr<PgmAverageImage> &pgmAverageImage) const {
  size_t height = *pgmAverageImage->getPgmImageHeader()->getImageHeight();
  size_t width = *pgmAverageImage->getPgmImageHeader()->getImageWidth();
  size_t idx = 0;
  uint8_t count = pgmAverageImage->getCount();
  for(size_t h = 0; h < height; h++) {
    for(size_t w = 0; w < width; w++) {
      ofs << static_cast<uint64_t>(pgmAverageImage->getPixelValue(static_cast<uint8_t>(idx))/count);
      ofs << ' ';
      idx++;
    }
    ofs << '\n';
  }
}
    
void PgmImageWriter::writePgmFile(string fileNameWithPath, const unique_ptr<PgmAverageImage> &pgmAverageImage) const {
  if (pgmAverageImage->getCount() == 0) {
    throw invalid_argument("All input files are invalid, no output file will be generated!");
  }
  
  cout << "Writing result file: " << fileNameWithPath << endl;
  ofstream ofs(fileNameWithPath);

  if (!ofs.good()) {
    throw invalid_argument("Output file could not be created!");
  }
  writeType(ofs);
  writeHeader(ofs, pgmAverageImage->getPgmImageHeader());
  writeContent(ofs, pgmAverageImage);
}

}
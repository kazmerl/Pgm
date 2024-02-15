#include <cstdint>
#include <vector>
#include <memory>
#include <stdexcept>
#include "../../include/model/PgmAverageImage.h"

using namespace std;

namespace PgmAverageCalculator {

PgmAverageImage::PgmAverageImage() : PgmImage() {
  count = 0;
}

void PgmAverageImage::mergeImage(unique_ptr<PgmImage<uint16_t>> &pgmImage) {  
    
  size_t imageWidth = *pgmImage->getPgmImageHeader()->getImageWidth();
  size_t imageHeight = *pgmImage->getPgmImageHeader()->getImageHeight();
  int receivedPixelCount = imageWidth * imageHeight;
  
  if (count == 0) {
    *this->pgmImageHeader = pgmImage->getPgmImageHeader();
    this->pgmPixels.reserve(receivedPixelCount);
  }

  int ownPixelCount = *getPgmImageHeader()->getImageHeight() * *getPgmImageHeader()->getImageWidth();
    
  if (receivedPixelCount != ownPixelCount) {
    throw invalid_argument("Image is not the same size as previous images!");
  }

  for (int i = 0; i < ownPixelCount; i++) {
    if (count == 0) {
     this->addPixel(pgmImage->getPixelValue(i));
    }
    else {
      *pgmPixels[i] += pgmImage->getPixelValue(i);
    }
  }

  count ++;
}

uint8_t PgmAverageImage::getCount() {
  return count;
}

}
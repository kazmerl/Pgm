#pragma once

#include <cstdint>
#include "PgmImage.h"

using namespace std;

namespace PgmAverageCalculator {

//Holds the model for the average pgm image
//Precondition - the images which have the same size as the first image are merged and averaged
class PgmAverageImage : public PgmImage<uint64_t> {
  private:
    uint8_t count;

  public:
    PgmAverageImage();
    void mergeImage(unique_ptr<PgmImage<uint16_t>> &pgmImage);
    uint8_t getCount();
};

}
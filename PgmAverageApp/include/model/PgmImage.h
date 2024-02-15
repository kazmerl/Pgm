#pragma once

#include <cstdint>
#include <vector>
#include <memory>
#include "PgmImageHeader.h"

using namespace std;

namespace PgmAverageCalculator {

template <typename T>
class PgmImage {
  protected:
    shared_ptr<PgmImageHeader> pgmImageHeader;
    vector<unique_ptr<T>> pgmPixels;

  public:
    PgmImage() {
      pgmImageHeader = shared_ptr<PgmImageHeader>(new PgmImageHeader());
    }

    T getPixelValue(const uint8_t index) const noexcept {
      return *pgmPixels[index];
    }

    void addPixel(const T pixel) noexcept {
        this->pgmPixels.push_back(unique_ptr<T>(new T(pixel)));
    }

    void initPixelVector() noexcept {
      int pixelCount = *pgmImageHeader->getImageWidth() * (*pgmImageHeader->getImageHeight());
      
      pgmPixels.reserve(pixelCount);
      pgmPixels.clear();
    }
    
    shared_ptr<PgmImageHeader> getPgmImageHeader() const noexcept {
      return pgmImageHeader;
    }
    
    bool operator == (const PgmImage &pgmImage) noexcept;
};

}
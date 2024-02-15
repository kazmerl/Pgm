
#include "../../include/model/PgmImage.h"

using namespace std;
  
namespace PgmAverageCalculator {

    template <typename T> bool PgmImage<T>::operator == (const PgmImage &pgmImage) noexcept {
      if (!(*pgmImageHeader).operator==(*pgmImage.getPgmImageHeader()) || //
          pgmPixels.size() != pgmImage.pgmPixels.size()) {
        return false;
      }

      int maxPixelIndex = *pgmImageHeader->getImageHeight() * *pgmImageHeader->getImageWidth();
      for (int pixelIndex = 0; pixelIndex < maxPixelIndex; pixelIndex++) {
        if ((pgmPixels[pixelIndex] == NULL && pgmImage.pgmPixels[pixelIndex] != NULL) ||
            (pgmPixels[pixelIndex] != NULL && pgmImage.pgmPixels[pixelIndex] == NULL)) {
              return false;
            }
        if (*pgmPixels[pixelIndex] != *pgmImage.pgmPixels[pixelIndex]) {
          return false;
        }
      }

      return true;
    }
}
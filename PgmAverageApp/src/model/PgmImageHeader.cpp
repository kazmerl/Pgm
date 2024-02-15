#include "../../include/model/PgmImageHeader.h"

using namespace std;
  
namespace PgmAverageCalculator {
  
  PgmImageHeader::PgmImageHeader() {
      imageWidth = 0;
      imageHeight = 0;
      ratio = 0;
    }

    unique_ptr<size_t> PgmImageHeader::getImageWidth() const noexcept {
      return unique_ptr<size_t>(new size_t(imageWidth));
    }

    unique_ptr<size_t> PgmImageHeader::getImageHeight() const noexcept {
      return unique_ptr<size_t>(new size_t(imageHeight));
    }

    unique_ptr<size_t> PgmImageHeader::getRatio() const noexcept {
      return unique_ptr<size_t>(new size_t(ratio));
    }

    void PgmImageHeader::setImageHeight(const size_t height) noexcept {
      this->imageHeight = height;
    }

    void PgmImageHeader::setImageWidth(const size_t width) noexcept {
      this->imageWidth = width;
    }

    void PgmImageHeader::setRatio(const size_t ratio) noexcept {
      this->ratio = ratio;
    }

    PgmImageHeader PgmImageHeader::operator = (const shared_ptr<PgmImageHeader> &pgmImageHeader) noexcept {
      setImageWidth(*pgmImageHeader->getImageWidth());
      setImageHeight(*pgmImageHeader->getImageHeight());
      setRatio(*pgmImageHeader->getRatio());

      return *this;
    }

    bool PgmImageHeader::operator == (const PgmImageHeader &pgmImageHeader) const noexcept {
            if (imageWidth != *pgmImageHeader.getImageWidth() || //
                imageHeight != *pgmImageHeader.getImageHeight() || //
                ratio != *pgmImageHeader.getRatio()) {
                  return false;
                }
            
            return true;
    }
}
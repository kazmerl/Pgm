#pragma once

#include <cstdint>
#include <vector>
#include <memory>

using namespace std;

namespace PgmAverageCalculator {

class PgmImageHeader {
  private:
    size_t imageWidth;
    size_t imageHeight;
    size_t ratio;    

  public:
    PgmImageHeader();

    unique_ptr<size_t> getImageWidth() const noexcept;
    unique_ptr<size_t> getImageHeight() const noexcept;
    unique_ptr<size_t> getRatio() const noexcept;
    
    void setImageWidth(const size_t width) noexcept;
    void setImageHeight(const size_t height) noexcept;
    void setRatio(const size_t ratio) noexcept;

    PgmImageHeader operator = (const shared_ptr<PgmImageHeader> &pgmImage) noexcept;
    bool operator == (const PgmImageHeader &pgmImageHeader) const noexcept;
};

}
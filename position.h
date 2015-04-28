#pragma once

#include <cstdint>
#include "printable.h"
#include "constants.h"

namespace hex {
/**
 * Identifies a position on the board
 */
struct Position : Printable
{
    uint8_t x_;
    uint8_t y_;
    Color color_;

    Position(uint8_t x, uint8_t y, Color color ):
            x_(x), y_(y), color_(color)
    {}

    Position(uint8_t x, uint8_t y ):
            x_(x), y_(y), color_(Color::NONE)
    {}

    virtual ~Position() {}

    std::string str() const {
        std::ostringstream oss;
        ost <<  "[(" << x_ <<","<<y_<<"):" << color_ <<"]";
        return ost.str();
    }
};

}

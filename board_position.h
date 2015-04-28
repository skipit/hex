#pragma once

#include <vector>
#include "position.h"

namespace hex {

class BoardPosition: Printable {

    Position pos_;
    std::vector<Position> neighbors_;



};

}

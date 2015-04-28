#include "utils.h"

std::ostream& operator<< (std::ostream& os, hex::Color c) {
   switch (c)
   {
    case hex::Color::NONE:
       return os << "N";
    case hex::Color::RED:
       return os << "R";
    case hex::Color::BLUE:
       return os << "B";
   }
}

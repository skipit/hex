#pragma once

namespace hex {

struct Printable
{
    virtual ~Printable {}

    std::string str() const = 0;
};

}


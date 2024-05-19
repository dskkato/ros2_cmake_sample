#include <iostream>

#include <spdlog/spdlog.h>
#include "my_lib/greeting.hpp"

namespace my_lib
{
    std::string greeting(const std::string &name)
    {
        return fmt::format("Hello, {}!", name);
    }
} // namespace my_lib
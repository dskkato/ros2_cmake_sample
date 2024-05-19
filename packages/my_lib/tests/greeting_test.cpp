#include "my_lib/greeting.hpp"

#include <gtest/gtest.h>

TEST(GreetingTest, testGreeting)
{
    EXPECT_EQ(my_lib::greeting("World"), "Hello, World!");
}
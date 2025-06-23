#define CATCH_CONFIG_MAIN
#include <catch2/catch_test_macros.hpp>
#include <catch2/catch_approx.hpp>
#include "../src/calc.hpp"

using Catch::Approx;

TEST_CASE("add: 正常系", "[calc]")
{
    // Arrange
    double a = 2.0;
    double b = 3.0;
    // Act
    double result = calc::add(a, b);
    // Assert
    REQUIRE(result == Approx(5.0));
}

TEST_CASE("subtract: 正常系", "[calc]")
{
    // Arrange
    double a = 5.0;
    double b = 3.0;
    // Act
    double result = calc::subtract(a, b);
    // Assert
    REQUIRE(result == Approx(2.0));
}

TEST_CASE("multiply: 正常系", "[calc]")
{
    // Arrange
    double a = 4.0;
    double b = 2.5;
    // Act
    double result = calc::multiply(a, b);
    // Assert
    REQUIRE(result == Approx(10.0));
}

TEST_CASE("divide: 正常系", "[calc]")
{
    // Arrange
    double a = 10.0;
    double b = 2.0;
    // Act
    double result = calc::divide(a, b);
    // Assert
    REQUIRE(result == Approx(5.0));
}

TEST_CASE("divide: 0除算例外", "[calc]")
{
    // Arrange
    double a = 1.0;
    double b = 0.0;
    // Act & Assert
    REQUIRE_THROWS_AS(calc::divide(a, b), std::invalid_argument);
}

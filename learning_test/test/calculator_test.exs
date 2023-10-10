defmodule CalculatorTest do
  use ExUnit.Case

  test "Calculator.multiply can multiply values" do
    product = Calculator.multiply(2,4)

    assert product == 8

  end


  test "calculator.multiply always return an integer" do

    product = Calculator.multiply(2,4)

    assert is_integer(product)

  end





end

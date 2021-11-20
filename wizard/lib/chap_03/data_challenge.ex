defmodule Wizard.DataChallenge do
  @moduledoc """
  This is a module to challenge what you have learned about 
  data types and operators.

  The challenge is to complete the two functions in the 
  module.

  multiplier/2
  This function should take two digits as arguments, multiply them together, and return the product.

  multiplier/3
  This function should take three digits as arguments, multiply them together, and return the product.

  If you run this module as it is, you will get an error when you compile. The error will
  state: "warning: this clause cannot match because a previous clause at line 21 always matches".
  This error is tell you that, at the moment, the two functions are the same and will therefore
  always return the same results. We will learn more about how functions are a part of matching
  in Elixir in the the chapter on Pattern Matching. The warning will go away once you have
  solved the challenge and given each of the functions a different arity.

  Hint 1: remember that in Elixir, functions return the value of the last line in the function block,
  the line before `end`.

  Hint 2: to round a float, use the Kernel function round/1

  Hint 3: only stings can be concatenated with <>

  Check your solution against the solution in branch 03_06e.
  """

  @doc """
  Multiply the two arguments together.
  Return the product.
  """
  def multiplier(a, b) do
    a * b
  end

  @doc """
  Multiply the three arguments together.
  Return the product.
  """
  def multiplier(a, b, c) do
    a * b * c
  end

  @doc"""
  Calculate the percentage b of a. 
  Return the percentage as a string concatenated with the 
  percent sign (%).

  Hint: to round a float, use the Kernal function
  round/1.
  """
  def percent(a, b) do
    percent = round((b/a)*100)
    to_string(percent) <> "%"
  end

  @doc """
  Test the muliply functions
  """
  def test() do
    multiplier(2, 20) == 40
    && multiplier(2, 20, 10) == 400
    && percent(100, 10) == "10%"
    && percent(57, 43) == "75%"
  end
end
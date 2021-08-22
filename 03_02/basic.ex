defmodule Basic do
  @moduledoc """
  This module contains functions for learning about data types in Elixir.

  # Variables
  Variable names can include uppercase or lowercase letters, underscores, or numbers,
  but they must start with a lowercase letter or an underscore.

  # Immutability
  Variables are immutable. Once a variable is bound, it cannot change. It can only be rebound.
  """

   @doc """
  The artithemtic operators +, -, *, /.
  """
  def mathmatical do
    # + adds two digits
    IO.puts "10+2 = #{10+2}"
    IO.puts "10.75+3.25 = #{10.75+3.25}"

    # - subtracts the digit on the left from the digit on the right
    IO.puts "10-2 = #{10-2}"
    IO.puts "10.75-3.25 = #{10.75-3.25}"

    # * multiplies two digits
    IO.puts "10*2 = #{10*2}"
    IO.puts "10.75*3.25 = #{10.75*3.25}"

    # / divides the digit on the left by the digit on the right. Returns a float.
    # div/2 divides two Integers and returns an Integer
    # rem/1 gets the remainder of the division of two numbers
    IO.puts "10/2 = #{10/2}"
    IO.puts "div(10, 3) = #{div(10, 3)}"
    IO.puts "rem(10, 3) = #{rem(10, 3)}"

    {:ok, "Mathematical Operators!"}
  end

  def comparison do
    amphibeans_list = ["toad", "frog"]
    amphibean_list = ["toad"]

    # == determines if two values are the same.
    IO.puts "10 == 10 #{10 == 10}"
    IO.puts ":wizard == :wizard #{:wizard == :wizard}"
    IO.puts "\"toad\" == \"toad\" #{"toad" == "toad"}"
    IO.puts "\"toad\" == \"frog\" #{"toad" == "frog"}"
    IO.puts "#{amphibeans_list} == #{amphibeans_list} #{amphibeans_list == amphibeans_list}"

    # != determines if they are not equal
    IO.puts "10 != 2 #{10 != 2}"
    IO.puts ":wizard != \"wizard\"#{:wizard != "wizard"}"
    IO.puts "\"ten\" != 10 #{"ten" != 10}"
    IO.puts "#{amphibean_list} != #{amphibeans_list} #{amphibeans_list != amphibean_list}"

    # === determines if both the values are the same as well as if the data types of each value are the same
    # Useful for strictly comparing an Integer to a Float
    IO.puts "10 === 10.0 #{10 === 10.0}"
    IO.puts "nil === \"\" #{nil === ""}"
    IO.puts "\"frog\" === 'frog' #{"frog" === 'frog'}"

    # !== determines if two values are the same data type but different values
    IO.puts "10 !== 10.0 #{10 !== 10.0}"
    IO.puts "10 !== 2 #{10 !== 2}"

    # > determines if the value on the left is greater than the value on the right
    IO.puts "10.75 > 3.25 #{10.75 > 3.25}"

    # < determines if the value on the right is greater than the value on the left
    IO.puts "10.75 < 3.25 #{10.75 < 3.25}"

    # >= determines if the value on the left is greater than or equal to the value on the right
    IO.puts "3.35 >= 10.75 #{3.35 >= 10.75}"
    IO.puts "10.75 >= 10.75 #{10.75 >= 10.75}"

    # <= determines if the value on the right is greater than or equal to the value on the left
    IO.puts "10.75 <= 3.25 #{10.75 <= 3.25}"
    IO.puts "3.25 <= 3.25 #{3.25 <= 3.25}"

    {:ok, "Comparison Operators!"}
  end
end

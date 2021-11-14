defmodule Wizard.Math do
  @moduledoc """
  This module contains functions for learning about 
  mathematical operators.
  """

  @doc """
  The artithemtic and comparison operators 
  """
  def demo do
    # add
    IO.puts "10+2 = #{10+2}"
    IO.puts "10.75+3.25 = #{10.75+3.25}"

    # subract right from left
    IO.puts "10-2 = #{10-2}"
    IO.puts "10.75-3.25 = #{10.75-3.25}"

    # multiply
    IO.puts "10.75*3.25 = #{10.75*3.25}"

    # / divide left by right and return Float
    IO.puts "10/2 = #{10/2}"

    # div/2 divide left by right and return Integer
    IO.puts "div(10, 3) = #{div(10, 3)}"

    # rem/1 return remainder 
    IO.puts "rem(10, 3) = #{rem(10, 3)}"

    # == same values?
    IO.puts "10 == 10 #{10 == 10}"

    # != not equal
    IO.puts "10 != 2 #{10 != 2}"

    # === same value and data type?
    IO.puts "10 === 10.0 #{10 === 10.0}"
    IO.puts "nil === \"\" #{nil === ""}"

    # !== not same data type and values?
    IO.puts "10 !== 10.0 #{10 !== 10.0}"
    IO.puts "10 !== 2 #{10 !== 2}"

    # > left greater than right?
    IO.puts "10.75 > 3.25 #{10.75 > 3.25}"

    # < right greater than left
    IO.puts "10.75 < 3.25 #{10.75 < 3.25}"

    # >= left  greater than or equal to right
    IO.puts "3.35 >= 10.75 #{3.35 >= 10.75}"
    IO.puts "10.75 >= 10.75 #{10.75 >= 10.75}"

    # <= right greater than or equal to left
    IO.puts "10.75 <= 3.25 #{10.75 <= 3.25}"
    IO.puts "3.25 <= 3.25 #{3.25 <= 3.25}"

    :ok
  end
end

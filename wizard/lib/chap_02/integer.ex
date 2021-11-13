defmodule Wizard.Integer do
  @moduledoc """
  This module contains functions for learning about
  the Integer and Float data types.
  """

  @doc """
  The Kernel function `is_integer` returns TRUE if
  the argument it receives is an integer.

  The Kernel function `is_float` returns TRUE if the
  argument it receives is a float.
  """
  def check(value) do
    IO.puts "Integer? #{is_integer(value)}"
    IO.puts "Float? #{is_float(value)}"
  end

  @doc """
  Demo of Integer and Float modules.
  """
  def demo do
    i = 245
    f = 3.14159
    s = to_string(i)

    IO.puts "Integer: #{i}"
    IO.inspect(Integer.parse(s), label: "Parse")
    IO.inspect(Integer.digits(i), label: "Digits")

    IO.puts "Float: #{f}"
    IO.puts "Round: #{Float.round(f)}"
    IO.puts "Round to 1: #{Float.round(f, 1)}"
    IO.inspect(Float.parse(s), label: "Parse")
  end
end

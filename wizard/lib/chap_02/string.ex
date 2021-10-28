defmodule Wizard.Chap02.String do
  @moduledoc """
  This module contains functions for learning about the String data types in Elixir.

  # Variables
  Variable names can include uppercase or lowercase letters, underscores, or numbers,
  but they must start with a lowercase letter or an underscore.

  # Immutability
  Variables are immutable. Once a variable is bound, it cannot change. It can only be rebound.
  """

  @doc """
  Define a string
  """
  def define() do
    definition = "Strings in Elixir are UTF-8 encoded binaries, meaning they are a sequence of Unicode characters. Strings are usually encased in double quotes. If a double quote is present in the string itself, it is escaped with a backslash."

    {:ok, definition}
  end

  @doc """
  The Kernel function `is_binary` will return true if the argument it receives
  is a binary, like a string.
  """
  def string?(value) do
    is_binary(value)
  end

  def concatenate(a, b) do
    c = a <> b
    IO.puts "Variable a: #{a}"
    IO.puts "Variable b: #{b}"
    IO.puts "Concatenation of a & b: #{c}"
  end


  def strings do
    w = "wizard"
    a = "AlcHeMY"
    i = "caster oil"

    IO.puts(<<10>>)
    IO.puts "Concatenation: Wise " <> w
    IO.puts "Captitalize #{w}: #{String.capitalize(w)}"
    IO.puts "Downcase #{a}: #{String.downcase(a)}"
    IO.puts "Upcase #{a}: #{String.upcase(a)}"
    IO.puts "Does #{i} contain oil? #{String.contains?(i, "oil")}"
    IO.puts "Does #{i} contain peanuts? #{String.contains?(i, "peanuts")}"
    IO.puts "First grapheme of #{w}: #{String.first(w)}"
    IO.puts "Last grapheme of #{w}: #{String.last(w)}"
    IO.inspect(String.split(i), label: "Split #{i}")
    IO.puts(<<10>>)
  end

  @doc """
  The Kernel function `is_integer` will return true if the argument it receives
  is an integer

  Large numbers are separated by the underscore to improve readability. For example,
  1000000 becomes 1_000_000
  """
  def integers do
    int_1 = 1
    int_2 = 234
    int_3 = 567_890

    IO.puts "The variable int_1 is bound #{int_1}."
    IO.puts "Truly an integer? #{is_integer(int_1)}"

    IO.puts "The variable int_2 is bound #{int_2}."
    IO.puts "Truly an integer? #{is_integer(int_2)}"

    IO.puts "The variable int_3 is bound #{int_3}."
    IO.puts "Truly an integer? #{is_integer(int_3)}"

    {:ok, "Integers!"}
  end

  @doc """
  The Kernel function `is_float` will return true if the argument it receives
  is a float.

  Floats are a sequence of digits that contain a dot and at least one other digit after the dot.
  Floats can also be written in scientific notation.
  """
  def floats do
    float1 = 1.23
    float2 = 123.4e5

    IO.puts "Float #1 is #{float1}."
    IO.puts "Truly a float? #{is_float(float1)}"

    IO.puts "Float #2 is #{float2}."
    IO.puts "Truly a float? #{is_float(float2)}"
    {:ok, "Floats!"}
  end

  @doc """
  The Kernel function `is_boolean` will return true if the argument it receives
  is a boolean.
  """
  def booleans() do
    IO.puts "true? #{is_boolean(true)}"
    IO.puts "\"true\"? #{is_boolean("true")}"
    IO.puts "false? #{is_boolean(false)}"
    {:ok, "Booleans!"}
  end
end

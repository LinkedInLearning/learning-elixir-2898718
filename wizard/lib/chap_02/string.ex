defmodule Wizard.String do
  @moduledoc """
  This module contains functions for learning
  about the String data types.
  """

  @doc """
  The Kernel function `is_binary` returns TRUE
  if the argument it receives is a binary.
  """
  def check(value) do
    is_binary(value)
  end

  @doc """
  Concatenate strings.
  """
  def concatenate(a, b) do
    c = a <> b
    IO.puts "Concatenate: #{c}"

    d = a <> " " <> b
    IO.puts "Concatenate again: #{d}"
  end

  @doc """
  Demo of the String module.
  """
  def demo do
    w = "wizard"
    a = "AlcHeMY"
    i = "caster oil"

    IO.puts("Length of #{w}: #{String.length(w)}")
    IO.puts "Capitalize #{w}: #{String.capitalize(w)}"
    IO.puts "Downcase #{a}: #{String.downcase(a)}"
    IO.puts "Upcase #{a}: #{String.upcase(a)}"
    IO.puts "Contains oil?: #{String.contains?(i, "oil")}"
    IO.puts "First grapheme of #{w}: #{String.first(w)}"
    IO.puts "Last grapheme of #{w}: #{String.last(w)}"
    IO.inspect(String.split(i), label: "Split")
  end
end

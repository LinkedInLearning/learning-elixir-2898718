defmodule Wizard.Tuple do
  @moduledoc """
  This module contains functions for learning 
  about the Tuple data type.
  """

  @doc """
  The Kernel function `is_atom` will return TRUE 
  if the argument it receives is an atom
  """
  def check(value) do
    is_tuple(value)
  end

  def charm do
    {:ok, "Charmed"}
  end

  def curse do
    {:error, "Cursed"}
  end

  def demo do
    a = {:hex, 6, "six"}
    IO.inspect(a, label: "Tuple")
    IO.puts "Size #{tuple_size(a)}"

    b = Tuple.append(a, :spell)
    IO.inspect(b, label: "Append Tuple")
    IO.inspect(tuple_size(b), label: "New Size")
  end
end

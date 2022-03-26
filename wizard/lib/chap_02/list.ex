defmodule Wizard.List do
  @moduledoc """
  This module contains functions for learning 
  about the List data type.
  """

  @doc """
  The Kernel function `is_list` will return TRUE if the 
  argument it receives is a list
  """
  def check(value) do
    is_list(value)
  end

  def add(list, value) do
    IO.inspect [value | list]
    IO.inspect list ++ [value]
    :ok
  end

  def demo do
    a = ["toad", 2, {:ok, "green"}]

    IO.inspect(a, label: "List")
    IO.puts "First element: #{List.first(a)}"
    IO.inspect(hd(a), label: "List Head")
    IO.inspect(tl(a), label: "List Tail")
    IO.inspect(length(a), label: "List Length")
  end
end

defmodule Wizard.Keyword do
  @moduledoc """
  This module contains functions for learning 
  about the Keyword List data type.
  """

  @doc """
  The Keyword module's keyword?/1 function return TRUE if the 
  argument it receives is a keyword list
  """
  def check(value) do
    Keyword.keyword?(value)
  end

  def options() do
    IO.inspect String.split("m-a-g-i-c", "-", [{:trim, true}])
    IO.inspect String.split("m-a-g-i-c", "-", trim: true)
    :ok
  end

  def demo do
    keyword_list =  [a: "toad", a: "newt", b: "bat"]
    get = Keyword.get(keyword_list, :a)
    values_only = Keyword.get_values(keyword_list, :a)

    IO.inspect(keyword_list, label: "Keyword List")
    IO.inspect(get, label: "Get")
    IO.inspect(values_only, label: "Get values")
    :ok
  end
end

defmodule Wizard.Map do
  @moduledoc """
  This module contains functions for learning 
  about the Map data type.
  """

  @doc """
  The Kernel function `is_map` will return TRUE if the 
  argument it receives is a map
  """
  def check(value) do
    is_map(value)
  end

  def create() do
    keyword_list =  [a: "toad", a: "newt", b: "bat"]
    Map.new(keyword_list)
  end

  def diy() do
    a = %{"color" => "green", 25 => 2,  :class => "Amphibia"}
    b = %{color: "green", eyes: 2,  class: "Amphibia"}

    IO.inspect a
    IO.inspect b
  end

  def demo() do
    x = Wizard.Map.diy()
    
    IO.puts x[:class]
    IO.puts x[:species]
    IO.puts Map.get(x, :class)
    IO.puts Map.get(x, :species)
    IO.puts x.eyes
    IO.inspect Map.put(x, :species, "common")
    :ok
  end
end
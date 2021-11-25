defmodule Wizard.Elements do
  @moduledoc """
  This module contains functions for managing data collections.
  """

  @doc """
  Return a list of element maps.
  """
  def collection do
    carbon = Map.new()
    IO.inspect(carbon, label: "Empty map")

    carbon = Map.put(carbon, :name, "Carbon")
    IO.inspect(carbon, label: "Map with one key")

    carbon = %{name: "Carbon", number: 6}
    IO.inspect(carbon, label: "Map with two keys")

    name = nil
    IO.inspect(name, label: "Carbon's name")

    hydrogen = Map.new()
    hydrogen = Map.put(hydrogen, :name, "Hydrogen")
    hydrogen = Map.put(hydrogen, :nmber, 1)
    number = Map.get(hydrogen, :number)
    IO.inspect(number, label: "hydrogen's atomic number")

    keys = nil
    IO.inspect(keys, label: "Hydrogen's keys")
    
    [
      %{name: "Carbon", number: 6},  
      %{name: "Hydrogen", number: 1}, 
      %{name: "Iron", number: 6}, 
      %{name: "Nitrogen", number: 7}, 
      %{name: "Tin", number: 50}, 
      %{name: "Lead", number: 82}
    ]

    # Iron has the wrong atomic number!
    # Change it from 6 to 26
  
    elements = nil
    IO.inspect(elements, label: "All the elements")
  end
end
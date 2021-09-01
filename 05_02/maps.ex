defmodule Maps do
  @moduledoc """
  This module contains functions for learning more about lists.
  """

  @doc """
  Return a list of strings
  """
  def elements do
    element = Map.new()
    IO.inspect(element, label: "A new map")

    element = Map.put(element, :name, "Carbon")
    IO.inspect(element, label: "A with a key and a value")

    carbon = %{name: "Carbon", number: 6}
    IO.inspect(carbon, label: "A with two keys and values")

    name = Map.get(carbon, :name)
    IO.inspect(name, label: "Map.get to get a value")

    number = Map.get(carbon, :nmber)
    IO.inspect(number, label: "Map.get to get a value for a key that does not exist")

    number = Map.get(carbon, :atomic_nmber, "That key doesn't exist!")
    IO.inspect(number, label: "Map.get to get a value for a key with a defaul value")

    keys = Map.keys(carbon)
    IO.inspect(keys, label: "The map's keys")
    IO.inspect(Map.has_key?(carbon, :nmber), label: "Map.has_key?(carbon, :nmber)")

    elements = [
      %{name: "Carbon", number: 6},
      %{name: "Hydrogen", number: 1},
      %{name: "Ruthenium", number: 4}
    ]
    [carbon, hydrogen, ruthenium] = elements

    IO.inspect(elements, label: "The elements")
    IO.inspect(ruthenium, label: "Ruthenium by itself")

    ruthenium = Map.delete(ruthenium, :number)
    IO.inspect(ruthenium, label: "Ruthenium deleted")

    ruthenium = Map.put(ruthenium, :number, 44)
    IO.inspect(ruthenium, label: "Ruthenium put back")

    ruthenium = Map.put(ruthenium, :number, 444)
    IO.inspect(ruthenium, label: "Ruthenium put back again")

    ruthenium = Map.put(ruthenium, :number, 44)
    IO.inspect(ruthenium, label: "Ruthenium put back again again")

    reconstructed_elements = [carbon, hydrogen, ruthenium]
    IO.inspect(reconstructed_elements, label: "Reconstructed list of elements")

    [head | tail] = reconstructed_elements
    IO.inspect(head, label: "The head of the element's list")
    IO.inspect(tail, label: "The tail of the element's list")
    IO.inspect(Map.take(head, [:name]), label: "Taking the name from the head")

    reconstructed_elements
  end
end

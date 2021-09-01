defmodule Lists do
  @moduledoc """
  This module contains functions for learning more about lists.
  """

  @doc """
  Return a list of strings
  """
  def elements do
    elements = ["Carbon"]

    IO.inspect(elements, label: "One element list")
    IO.inspect(List.insert_at(elements, 1, "Hydrogen"), label: "Insert")

    elements = ["Carbon", "Hydrogen", "Ruthenium", "Silicon", "Ruthenium"]

    IO.inspect(elements, label: "Longer list")
    IO.inspect(List.delete(elements, "Ruthenium"), label: "Delete")

    elements = ["Carbon", "Hydrogen", "Ruthenium", "Silicon", "Nitrogen", "Yterbium"]

    IO.inspect(elements, label: "Even longer list")
    IO.inspect(List.replace_at(elements, 6, "Ytterbium"), label: "Replace")

    elements = ["Carbon", "Hydrogen", "Ruthenium", "Silicon", "Nitrogen", "Ytterbium", ["Tin", "Lead"]]
    flattened_elements = List.flatten(elements)
    string_elements = List.to_string(elements)

    IO.inspect(elements, label: "Unflat list")
    IO.inspect(flattened_elements, label: "Flatten")
    IO.inspect(string_elements, label: "To string")

    string_elements
  end
end

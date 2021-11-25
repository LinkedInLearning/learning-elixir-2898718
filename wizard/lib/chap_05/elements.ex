defmodule Wizard.Elements do
  @moduledoc """
  This module contains functions for managing data collections.
  """

  @doc """
  Return a list of elements as a string
  """
  def elements do
    elements = ["Carbon"] 
    IO.inspect(elements, label: "One element")

    elements = List.insert_at(elements, 1, "Hydrogen")
    IO.inspect(elements, label: "Two elements")

    more_elements = ["Iron", "Iron", "Nitrogent", "Tin", "Lead"]
    elements = elements ++ more_elements
    IO.puts "More elements"
    IO.inspect(elements)

    elements = List.delete(elements, "Iron")
    IO.puts("One Iron")
    IO.inspect(elements)
    
    elements = List.replace_at(elements, 3, "Nitrogen")
    IO.puts("Properly spelled Nitrogen")
    IO.inspect(elements)
    
    List.to_string(elements)
  end
end
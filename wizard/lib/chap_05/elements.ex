defmodule Wizard.Elements do
  @moduledoc """
  This module contains functions for advanced learning  
  about lists.
  """

  @doc """
  Return a list of elements as strings

  Examples

    iex> elements = ["Carbon"]
    ["Carbon"]

    iex> List.insert_at(elements, 1, "Hydrogen")
    "Carbon", "Hydrogen"]

    iex> elements = ["Carbon", "Hydrogen", "Iron"]
    ["Carbon", "Hydrogen", "Iron"]

    iex> elements = List.insert_at(elements, 4, "Iron")
    ["Carbon", "Hydrogen", "Iron", "Iron"]

    iex> elements = List.delete(elements, "Iron")
    ["Carbon", "Hydrogen", "Iron"]

    iex> elements = List.insert_at(elements, 4, "Nitrogent")
    ["Carbon", "Hydrogen", "Iron", "Nitrogent"]

    iex> elements = List.replace_at(elements, 4, "Nitrogen")
    ["Carbon", "Hydrogen", "Iron", "Nitrogen"]

    iex> elements = elements ++ ["Tin", "Lead"]
    ["Carbon", "Hydrogen", "Iron", "Nitrogen", ["Tin", "Lead"]]

    iex> elements = List.to_string(elements)
    "CarbonHydrogenIronNitrogentTinLead"
  """
  def elements do
    :ok
  end
end
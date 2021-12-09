defmodule Wizard.ModChallenge do
    @moduledoc """
    This module contains a challenge for you. Use what you 
    have learned about modules and functions in Elixir to 
    solve this challenge.

    Your challenge is write a module. Name the module 
    
    Wizard.ElementChallenge
    
    Save the module in the chap_08 directory
    
    08_04/element_challenge.ex

    Include the functions necessary to make the test/0 function 
    return true.

      iex> Wizard.ModChallenge.test()
      true
    
    HINTS 

    This is a list of the atomic numbers of nonmetals:
    
    [1, 1, 6, 7, 8, 9, 10, 15, 16, 17, 18, 34, 35, 36, 53, 54, 85, 86]

    You can use it to determine whether an element is or is 
    not a metal.
    """
    alias Wizard.ElementChallenge, as: Elements

    @doc """
    Test your knowledge of modules and functions. Given a list of elements, the
    elements module function heavy_metal/1 should return the element that is the heaviest
    metal. The function should return :error if it recieves anything other than a list of
    maps with a number key.
    """
    def test() do
      Elements.heavy_metal(nil) == :error and
      Elements.heavy_metal([]) == :error and
      Elements.heavy_metal([%{id: 1, name: "nitrogen"}]) == :error and
      Elements.heavy_metal(elements()) == %{name: "Iridium", number: 77, weight: 192}
    end

    defp elements() do
      [
        %{
            name: "Neon",
            number: 10,
            weight: 20
        },
        %{
            name: "Iridium",
            number: 77,
            weight: 192
        },
        %{
            name: "Carbon",
            number: 6,
            weight: 12
        },
        %{
            name: "Hydrogen",
            number: 1,
            weight: 1
        }
      ]
    end
  end
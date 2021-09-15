defmodule Challenge do
    @moduledoc """
    This module contains a challenge for you. Use what you have learned about modules
    and functions in Elixir to solve this challenge.

    Your challenge is write a module with the necessary functions
    in the file named challenge_elements.ex to make the test/0 function return return true.
    Your module should be named ChallengeElements with a file name
    08_04/challenge_elements.ex

    You'll note that the solution module is named SolutionElements with the file
    name 08_05/solution_elements.ex. This is to avoid name conflicts in elixir.
    Module names must be unique.

    Some hints: you can use this module global to help determine whether an element
    is or is not a metal.

    @nonmetals [1, 1, 6, 7, 8, 9, 10, 15, 16, 17, 18, 34, 35, 36, 53, 54, 85, 86]

    You should be write your functions, compile this file c("08_04/challenge.ex"), and call test/0
    to receive true as the return value.

    iex> Challenge.test()
    true
    """
    # alias ChallengeElements, as: Elements
    alias SolutionElements, as: Elements

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

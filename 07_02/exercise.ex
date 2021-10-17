defmodule Exercise do
    @moduledoc """
    This module contains an exercise for you. Use what you have learned about if/else
    control structures in Elixir.

    Your exercise is to complete the functions in the module.

    hydrogen?/1
    This function should take an element map with a name key and use an If structure to
    check the name of the given element.
    If the name key is "Hydrogen" then return true.
    Otherwise return false.

    nonmetal?/1
    This function should take an element map with a group key and use an If structure to
    check the group of the given element.
    If the group key is 1 or 14 then return true.
    Otherwise return false.

    message/1
    Use an unless structure to return "Not Hydrogen" if the given element
    is not named "Hydrogen".

    To test your code, run test/0. Your code is successful if you return all true
    statements.
    """

    @doc """
    If the elment is named "Hydrogen", return true. Otherwise, false.
    """
    def hydrogen?(element) do
        false
    end

    @doc """
    If the element's group is 1 or 14, return true.
    Otherwise, false
    """
    def nonmetal?(element) do
        false
    end

    @doc """
    Unless the element is named Hydrogen, return "Not Hydrogen."
    """
    def message(element) do
        nil
    end

    @doc """
    Run this function to test all your solutions.
    """
    def test() do
        IO.puts hydrogen?(%{name: "Hydrogen"}) === True
        IO.puts hydrogen?(%{name: "Iridium"}) === False
        IO.puts nonmetal?(%{group: 1}) === True
        IO.puts nonmetal?(%{group: 14}) === True
        IO.puts nonmetal?(%{group: 3}) === False
        IO.puts message(%{name: "Iridium"}) === "Not Hydrogen"
    end
  end

defmodule Exercise do
    @moduledoc """
    This module contains an exercise for you. Use what you have learned about if/else
    control structures in Elixir.

    Your exercise is to complete the functions in the module.

    hydrogen?/1
    This function should take an element map with a name key.
    If the name key is "Hydrogen" then return true.
    Otherwise return false.

    nonmetal?/1
    This function should take an element map with a group key.
    If the group key is 1 or 14 then return true.
    Otherwise return false.

    magic_of_green/0
    This function should take the list of unicode numbers  and
        - use reduce/3 to only return the green check marks

    magic_of_reduce/0
    This function take the list of unicode numbers and
        - return a new list where the red x's have been replaced with the greek symbol omega

    To test your code, run test/0.
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

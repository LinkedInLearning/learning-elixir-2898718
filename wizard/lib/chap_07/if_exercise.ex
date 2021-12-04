defmodule Wizard.IfExercise do
    @moduledoc """
    This module contains an exercise for you. Use what you 
    have learned about if/else control structures in Elixir.

    Complete the functions in the module.

    hydrogen?/1
    This function should take an element map with a name key 
    and use an If structure to check the name of the given 
    element.

    If the name key is "Hydrogen" then return true.
    Otherwise return false.
    
    nonmetal?/1
    This function should take an element map with a group key 
    and use an If structure to check the group of the given 
    element.

    If the group key is 1 or 14 then return true.
    Otherwise return false.

    message/1
    Use an unless structure to return "Not Hydrogen" if the 
    given element is not named "Hydrogen".

    To test your code, run test/0. Your code is successful 
    if you return all true values.
    """

    @doc """
    If the elment is named "Hydrogen", return true. 
    Otherwise, false.
    """
    def hydrogen?(%{name: name}) do
      if name == "Hydrogen" do
          true
      else
          false
      end
    end

    @doc """
    If the element's group is 1 or 14, return true.
    Otherwise, false
    """
    def nonmetal?(%{group: group}) do
      if group == 1 or group == 14 do
          true
      else
          false
      end
    end

    @doc """
    Unless the element is named Hydrogen, return "Not Hydrogen."
    """
    def message(element) do
      unless Map.get(element, :name) === "Hydrogen" do
          "Not Hydrogen"
      end
    end

    @doc """
    Run this function to test all your solutions.

    iex> Wizard.IfExercise.test()
    """
    def test() do
      IO.puts hydrogen?(%{name: "Hydrogen"}) === true
      IO.puts hydrogen?(%{name: "Iridium"}) === false
      IO.puts nonmetal?(%{group: 1}) === true
      IO.puts nonmetal?(%{group: 14}) === true
      IO.puts nonmetal?(%{group: 3}) === false
      IO.puts message(%{name: "Iridium"}) === "Not Hydrogen"
    end
  end

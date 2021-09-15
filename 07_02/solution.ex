defmodule Solution do
    @moduledoc """
    This module contains a solution to the exercises.
    """

    @doc """
    If the elment is named "Hydrogen", return true. Otherwise, false.
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

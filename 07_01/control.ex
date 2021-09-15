defmodule Control do
    @moduledoc """
    This module contains functions for learning about control flow in Elixir.
    """

    @doc """
    Control Flow
    """
    def flow() do
        IO.puts "if true is true, print out true, else false"
        IO.puts if true, do: "true", else: "false"

        element = "carbon"

        IO.puts "If the #{element} is carbon, return CARBON, else, return the #{element}"
        if element === "carbon" do
            IO.puts String.upcase element
        else
            IO.puts element
        end

        element = %{name: "Hydrogen", group: 1}

        IO.inspect(element, label: "Our current element is")
        IO.puts "If the element's name is Hydrogen and the group is 1, return \"Other nonmetal\", else return \"Other\""
        if element.name === "Hydrogen" and element.group === 1 do
            IO.puts "Other nonmetal"
        else
            IO.puts "Other"
        end

        IO.inspect(element, label: "Our current element is")
        unless element === "nitrogen" do
          IO.puts "The element is not Nitrogen."
        end

        {:ok, "Control the flow with control flow structures!"}
    end
  end

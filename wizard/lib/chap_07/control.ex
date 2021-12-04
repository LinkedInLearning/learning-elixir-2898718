defmodule Wizard.Control do
    @moduledoc """
    This module contains functions for learning about control 
    flow in Elixir.
    """

    def example1(value) do
      if value do
        true
      else
        false
      end
    end

    def example2(value) do
      if value, do: true, else: false
    end

    @doc """
    Try this function with these arguments:

    %{name: "Hydrogen", group: 1}
    %{name: "Carbon", group: 14}
    %{name: "Iridium", group: 9}
    %{name: "Calcium", group: 2}
    """
    def example3(%{name: name, group: group}) do
      if (name === "Hydrogen" and group === 1)
      or group == 14 do
        "Other non metal"
      else
        "Unknown"
      end
    end

    def example3(_), do: "Unknown"

    def example4(%{name: name}) do
      unless String.downcase(name) === "nitrogen" do
        "This isn't Nitrogen!"
      else
        "I \u2665 Nitrogen!"
      end
  end

  def example4(_), do: "Unknown"
end
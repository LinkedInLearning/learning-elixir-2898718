defmodule Wizard.With do
  @moduledoc """
  This module contains functions for learning about control 
  flow in Elixir with the With structure.
  """

  @doc """
  Try this value:

  iex> e = %{name: "Iron", group: 8}
  iex> Wizard.With.example(e)
  iex> e = %{name: "Carbon", group: 8}
  iex> Wizard.With.example(e)
  """
  def example(e) do
    with "Iron" <- Map.get(e, :name),
      8 <- Map.get(e, :group) do
        :ok
    end
  end
end
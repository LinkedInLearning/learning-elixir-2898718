defmodule Wizard.With do
  @moduledoc """
  This module contains functions for learning about control 
  flow in Elixir with the With structure.
  """

  @doc """
  Try these values:

  e = %{name: "Iron", group: 8}
  e = %{name: "Carbon", group: 8}
  
  Wizard.With.example(e)
  """
  def example(e) do
    with "Iron" <- Map.get(e, :name),
      8 <- Map.get(e, :group) do
        :ok
    else
      _ -> :error
    end
  end
end
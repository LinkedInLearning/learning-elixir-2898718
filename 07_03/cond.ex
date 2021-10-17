defmodule Flow.Cond do
  @moduledoc """
  This module contains functions for learning about control flow in Elixir with
  the Cond structures.
  """

  @doc """
  Control Flow with Cond expression
  """
  def flow() do
    element = "carbon"

    cond do
      element === "iridium" ->
        IO.puts "cond structure tells us #{element} is iridium"
      true ->
        IO.puts "cond structure default caught #{element}"
    end

    {:ok, "Control with control flow structures!"}
  end
end

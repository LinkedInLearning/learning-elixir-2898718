defmodule Flow.With do
  @moduledoc """
  This module contains functions for learning about control flow in Elixir with
  the With structures.
  """

  @doc """
  Control Flow
  """
  def flow() do
    IO.inspect(Map.put(element, :classification, classification), label: "The next classifier returned")

    element = %{name: "Hydrogen", number: 1, weight: 1, group: 1}
    with_tuple = with name <- Map.get(element, :name),
    1 <- Map.get(element, :group) do
      {:ok, name}
    end

    IO.inspect(with_tuple, label: "The With structure without an else clauses returns this tuple")

    {:ok, "Control with control flow structures!"}
  end
end

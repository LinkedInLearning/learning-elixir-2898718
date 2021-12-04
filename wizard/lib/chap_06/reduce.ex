defmodule Wizard.Reduce do
  @moduledoc """
  This module contains functions for reducers.
  """

  def example1() do
    numbers = [2, 3, 4]
    IO.inspect(numbers, label: "Numbers")

    r = Enum.reduce(numbers, 5, fn(n, acc) -> 
      IO.inspect(acc, label: "Accumulator")
      IO.inspect(n, label: "Element")
      IO.inspect(n * acc, label: "Product")
    end)

    IO.inspect(r, label: "Reduce")
  end

  def example2() do
    elements = ["Carbon", "Hydrogen", "Iron"]
    IO.inspect(elements, label: "Elements")

    r = Enum.reduce(elements, [], fn e, acc -> 
      [String.downcase(e)] ++ acc
    end)
    IO.inspect(r, label: "Reducer")
  end

  def example3 do
    elements = [
      %{name: "Hydrogen", number: 1, weight: 1}, 
      %{name: "Carbon", number: 6, weight: 12}, 
      %{name: "Iridium", number: 77, weight: 192}
    ]
    IO.inspect(elements, label: "Elements")

    Enum.reduce(elements, [], fn e, acc ->
      neutrons = e.weight - e.number
      [Map.put(e, :neutrons, neutrons) | acc]
    end)
  end

  @doc """
  Element classification groups.

  9 "transition metal"
  14 "other non metal" 
  """
  def example4 do
    elements = [
      %{name: "Hydrogen", group: 1}, 
      %{name: "Carbon", group: 14}, 
      %{name: "Iridium", group: 9}
    ]
    IO.inspect(elements, label: "Elements")

    Enum.reduce(elements, [], fn 
      %{group: 9} = e, acc -> 
        class = classify(e, "transition metal")
        [class | acc]
      %{group: 14} = e, acc ->
        class = classify(e, "other non-metal")
        [class | acc]
      _ = e, acc -> 
        class = classify(e, "unknown")
        [class | acc]
    end)
  end

  def classify(map, classification) do
    Map.put(map, :classification, classification)
  end
end
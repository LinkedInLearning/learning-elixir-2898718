defmodule Wizard.Iterate do
  @moduledoc """
  This module contains functions for iterating using list
  comprehensions and the Enum module.
  """

  def example1() do
    numbers = [1, 2, 3]
    IO.inspect(numbers, label: "Numbers")

    iterate = for n <- numbers, do: n * 3
    IO.inspect(iterate, label: "Muliply each by 3")
  end

  def example2() do
    symbols = %{"Iron" => "Fe", "Carbon" => "C"}
    IO.inspect(symbols, label: "Symbols")

    keys = for {key, _value} <- symbols do
      key
    end
    IO.inspect(keys, label: "List the keys")

    values = for {_key, value} <- symbols do
      value
    end
    IO.inspect(values, label: "List the values")
  end

  def example3 do
    amounts = [2, 3]
    sizes = ["cups", "spoonfuls"]
    items = ["elderflower", "pomfrey"]
    IO.inspect(amounts, label: "Amounts")
    IO.inspect(sizes, label: "Sizes")
    IO.inspect(items, label: "Items")

    joins = for a <- amounts, s <- sizes, i <- items do
      "#{a} #{s} of #{i}"
    end
    IO.inspect(joins, label: "Permutations")
  end

  def example4 do
    i = [5, 4, 8, 1, 2]
    IO.inspect(i, label: "Integers")

    i_sorted = Enum.sort(i)
    IO.inspect(i_sorted, label: "Integers sorted")

    l = ["r", "i", "d", "t"]
    IO.inspect(l, label: "Letters")

    l_sorted = Enum.sort(l)
    IO.inspect(l_sorted, label: "Letters sorted")
  end

  def example5 do
    items = ["frog", "toad", "newt"]
    IO.inspect(items, label: "Items")

    e = Enum.each(items, fn(x) -> IO.puts(x) end)
    IO.inspect(e, label: "Items after `each`")

    m = Enum.map(items, fn(x) -> String.upcase(x) end)
    IO.inspect(m, label: "Items after `map`")

    elements = [
      %{name: "Hydrogen", symbol: "H", number: 1}, 
      %{name: "Iron", symbol: "Fe", number: 26},
      %{name: "Carbon", symbol: "C", number: 6}
    ]
    IO.inspect(elements, label: "Elements")

    iterate = Enum.map(elements, fn(e) -> 
      Map.get(e, :symbol)
    end)
    IO.inspect(iterate, label: "List of element symbols")
  end
end
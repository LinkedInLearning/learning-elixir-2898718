defmodule Iterate do
    @moduledoc """
    This module contains functions for learning about iterating enumerables in Elixir.
    """

     @doc """
    Iterating lists
    """

    def lists() do
        letters = ["r", "i", "d", "t"]
        digits = [5, 4, 8, 1, 2]
        IO.inspect(List.sort(letters), label: "The letters sorted")
        IO.inspect(List.sort(digits), label: "The digits sorted")
        {:ok, "Iterate over lists!"}
    end

    @doc """
    More enumerable magic!
    """
    def magic() do
        iex(18)> list = ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
        ["✅", "❌", "✅", "✅", "❌", "✅", "✅"]
        iex(19)> list |> Enum.filter(fn i -> i === "\u2705" end) |> Enum.take(1)
        ["✅"]
        iex(20)> list = ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
        ["✅", "❌", "✅", "✅", "❌", "✅", "✅"]
        iex(21)> list |> Enum.filter(fn i -> i === "\u2705" end)
        ["✅", "✅", "✅", "✅", "✅"]
        iex(22)> list |> Enum.filter(fn i -> i === "\u2705" end) |> Enum.take(2)
        ["✅", "✅"]
        iex(23)> list |> Enum.filter(fn i -> i === "\u2705" end) |> Enum.take(1)
        ["✅"]
        iex(24)> list |> Enum.filter(fn i -> i === "\u2705" end)
        ["✅", "✅", "✅", "✅", "✅"]
        iex(25)> list |> Enum.filter(fn i -> i === "\u2705" end) |> Enum.take(3)
        ["✅", "✅", "✅"]
        iex(26)> list |> Enum.filter(fn i -> i === "\u2705" end) |> Enum.take(2)
        ["✅", "✅"]
        iex(27)> list |> Enum.filter(fn i -> i === "\u2705" end) |> Enum.first()
        iex(29)> list |> Enum.filter(fn i -> i === "\u2705" end) |> Enum.count()
    end
  end

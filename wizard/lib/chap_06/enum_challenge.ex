defmodule Wizard.EnumChallenge do
    @moduledoc """
    This module contains a challenge for you. Use what you 
    have learned about iteration with enumerators to solve it.

    Your challenge is to complete the functions in this module.

    magic_of_three/0
    This function should take the list of unicode values and
      - sort it
      - return the first three elements

    magic_of_red/0
    This function should take the list of unicode values  and
      - only return the red x's

    magic_of_green/0
    This function should take the list of unicode values  and
      - use reduce/3 to only return the green check marks

    magic_of_reduce/0
    This function take the list of unicode values and
      - return a new, sorted list
      - where the red x's have been replaced with the greek symbol omega
      - and only contains green check marks and omegas (anything else should be removed)

    To test your code, run test/0.
    """

    @doc """
    Make enumerable magic!
    Sort the enumerable and return the first three elements
    """
    def magic_of_three() do
        list = ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
        sorted_list = Enum.sort(list)
        Enum.take(sorted_list, 3)
    end

    @doc """
    Make enumerable magic!
    Only return the red x's
    """
    def magic_of_red() do
        list = ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
        Enum.filter(list, fn i -> i === "\u274c" end)
    end

    @doc """
    Make enumerable magic!
    Only return the green check marks
    """
    def magic_of_green() do
        list = ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
        Enum.reduce(list, [], fn
            "\u2705", acc -> ["\u2705" | acc]
            _, acc -> acc
        end)
    end

    @doc """
    Make enumerable magic!
    Create a new list where the red x's have been replaced 
    with the greek symbol omega. Return a list only 
    containing green check marks and omegas.

    the `\` followed by `u` is an escape code for unicode 
    values in Elixir. You can read more about them in the 
    Elixir documentation sigils at 
    https://elixir-lang.org/getting-started/sigils.html 
    """
    def magic_of_reduce() do
      list = ["\u2705", "\u274c", "\u2705", "\u2705", "omega", "\u274c", "\u2705", "\u2705"]
      new_list = Enum.reduce(list, [], fn
            "\u2705", acc -> ["\u2705" | acc]
            "\u274c", acc -> ["\u03A9" | acc]
            _, acc -> acc
        end)
      Enum.sort(new_list)
    end

    @doc """
    Test your enumerable magic!
    Run this function to test all your solutions.
    """
    def test() do
        IO.puts magic_of_three() == ["✅", "✅", "✅"]
        IO.puts magic_of_red() == ["❌", "❌"]
        IO.puts magic_of_green() == ["✅", "✅", "✅", "✅", "✅"]
        IO.puts magic_of_reduce() == ["Ω", "Ω", "✅", "✅", "✅", "✅", "✅"]
    end
  end
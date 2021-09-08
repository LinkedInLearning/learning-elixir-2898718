defmodule Exercise do
    @moduledoc """
    This module contains a challenge for you. Use what you have learned about iteration
    in Elixir to solve this challenge.

    Your challenge is to complete the functions in the module.

    magic_of_three/0
    This function should take the list of unicode numbers and
        - sort it
        - return the first three elements

    magic_of_red/0
    This function should take the list of unicode numbers  and
        - only return the red x's

    magic_of_green/0
    This function should take the list of unicode numbers  and
        - use reduce/3 to only return the green check marks

    magic_of_reduce/0
    This function take the list of unicode numbers and
        - return a new list where the red x's have been replaced with the greek symbol omega

    To test your code, run test/0.
    """

    @doc """
    Make enumerable magic!
    Sort the enumerable and return the first three elements
    """
    def magic_of_three() do
        ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
    end

    @doc """
    Make enumerable magic!
    Only return the red x's
    """
    def magic_of_red() do
        ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
    end

    @doc """
    Make enumerable magic!
    Only return the green check marks
    """
    def magic_of_green() do
        ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
    end

    @doc """
    Make enumerable magic!
    Return a new list where the red x's have been replaced with the greek symbol omega
    """
    def magic_of_reduce() do
        ["\u2705", "\u274c", "\u2705", "\u2705", "\u274c", "\u2705", "\u2705"]
    end

    @doc """
    Test your enumerable magic!
    Run this function to test all your solutions.
    """
    def test() do
        IO.puts magic_of_three == ["✅", "✅", "✅"]
        IO.puts magic_of_red == ["❌", "❌"]
        IO.puts magic_of_green == ["✅", "✅", "✅", "✅", "✅"]
        IO.puts magic_of_reduce == ["\u2705", "\u03A9", "\u2705", "\u2705", "\u03A9", "\u2705", "\u2705"]
    end
  end

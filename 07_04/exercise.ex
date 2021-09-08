defmodule Exercise do
    @moduledoc """
    This module contains an exercise for you. Use what you have learned about case statement
    control structures and guards in Elixir.

    Your exercise is to complete the functions in the module.

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
    Simple case with guards
    """
    def case_control() do

    end

    @doc """
    Complex case with guards
    """
    def complex_case_control() do

    end

    @doc """
    Run this function to test all your solutions.
    """
    def test() do
        IO.puts case_control ==
        IO.puts complex_case_control ==
    end
  end

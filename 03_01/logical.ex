defmodule Logical do
  @moduledoc """
  This module contains functions for learning about logical operators in Elixir.

  # Variables
  Variable names can include uppercase or lowercase letters, underscores, or numbers,
  but they must start with a lowercase letter or an underscore.

  # Immutability
  Variables are immutable. Once a variable is bound, it cannot change. It can only be rebound.
  """

  @doc """
  The logical operator "and", "or", "not", "&&", "||", and "!".
  """
  def operators do
    wizards_honor = true
    a_challenge = 1

    # strict boolean operators like "and", "or", and "not" expect a boolean as the first argument
    IO.puts "wizards_honor is a boolean? #{is_boolean(wizards_honor)}"

    # "and" compares both values.
    # If both are true, returns the first value which is true
    IO.puts "true and wizards honor: #{true and wizards_honor}"
    IO.puts "wizards_honor and false: #{wizards_honor and false}"

    # "or" compares both values.
    # If either are true, returns the second value
    IO.puts "wizards_honor or a_challenge: #{wizards_honor or a_challenge}"

    # "not" inverts the value of the argument given to it
    IO.puts "not wizards_honor: #{not wizards_honor}"
    IO.puts "not false: #{not false}"

    # since strict boolean operators expect the first argument to be a boolean,
    # the following line will fail. To see it fail, uncomment the line by removing the # from in front.
    # Then re-compile and call the function.
    # IO.puts "not a_challenge: #{not a_challenge}"

    # non-strict boolean operators like "&&", "||", and "!" do not expect a boolean as the first argument

    # "&&" is just like "and"
    IO.puts "true && wizards_honor: #{true && wizards_honor}"
    IO.puts "wizards_honor && a_challenge: #{wizards_honor && a_challenge}"
    IO.puts "a_challenge && wizards_honor: #{a_challenge && wizards_honor}"
    IO.puts "wizards_honor && false: #{wizards_honor && false}"
    IO.puts "nil && a_challenge: #{nil && a_challenge}"

    # "||" is just like "or"
    IO.puts "wizards_honor || a_challenge: #{wizards_honor || a_challenge}"
    IO.puts "a_challenge || wizards_honor: #{a_challenge || wizards_honor}"

    # "!" is just like "not"
    IO.puts "!wizards_honor: #{!wizards_honor}"
    IO.puts "!false: #{!false}"
    IO.puts "!a_challenge: #{!a_challenge}"

    {:ok, "Logical Operators!"}
  end
end

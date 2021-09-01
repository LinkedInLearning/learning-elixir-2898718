defmodule Exercise do
  @moduledoc """
  This module contains a challenge for you. Use what you have learned about pattern matching
  in Elixir to solve this challenge.

  Your exercise is to write as many function definitions as you need to meet all of the rules
  listed below. Use pattern matching against the function arguments.

  Rules:
  gunpowder cannot mix with any other ingredient
  dust can mix with anything
  ginger can only mix with rose, but only if it is the second ingredient
  rose can mix with ginger and moondew
  moondew cannot mix with ginger

  Remember the underscore. In Elixir a value that is not meant to be used
  has to be assigned to _ or a variable starting with underscore.

  Remember that the order of function definitions matters. The first pattern
  to match will be the function called.

  To test your code, run these calls. Your function should return the
  expected boolean listed.

  iex> Exercise.can_mix?("gunpowder", "anything")
  false
  iex> Exercise.can_mix?("anything", "gunpowder")
  false
  iex> Exercise.can_mix?("rose", "ginger")
  true
  iex> Exercise.can_mix?("rose", "moondew")
  true
  iex> Exercise.can_mix?("moondew", "rose")
  true
  iex> Exercise.can_mix?("moondew", "ginger")
  false
  iex> Exercise.can_mix?("ginger", "moondew")
  false
  iex> Exercise.can_mix?("mandrake", "spider eggs")
  true
  """

  @doc """
  Accepts two arguments and varifies that two agruments can be combined safely.
  Returns true or false.
  """
  # def can_mix?() do

  # end
end

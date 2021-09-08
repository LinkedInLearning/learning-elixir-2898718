defmodule Solution do
  @moduledoc """
  This module contains solutions to the exercise in 04_03.

  Rules
  gunpowder cannot mix with any other ingredient
  dust can mix with anything
  ginger can only mix with rose, but only if it is the second ingredient
  rose can mix with ginger and moondew
  moondew cannot mix with ginger

  Tests
  iex> Solution.can_mix?("gunpowder", "anything")
  false
  iex> Solution.can_mix?("anything", "gunpowder")
  false
  iex> Solution.can_mix?("rose", "ginger")
  true
  iex> Solution.can_mix?("rose", "moondew")
  true
  iex> Solution.can_mix?("moondew", "rose")
  true
  iex> Solution.can_mix?("moondew", "ginger")
  false
  iex> Solution.can_mix?("ginger", "moondew")
  false
  iex> Solution.can_mix?("mandrake", "spider eggs")
  true
  """

  @doc """
  Verify that two incredients can be combined safely.
  """
  def can_mix?("gunpowder", _), do: false
  def can_mix?(_, "gunpowder"), do: false
  # def can_mix?("dust", _), do: true
  # def can_mix?(_, "dust"), do: true
  def can_mix?("rose", "ginger"), do: true
  def can_mix?("rose", "moondew"), do: true
  def can_mix?("moondew", "rose"), do: true
  def can_mix?("moondew", "ginger"), do: false
  def can_mix?("ginger", "moondew"), do: false
  def can_mix?(_, _), do: true
end

defmodule Wizard.Match do
  @moduledoc """
  This module contains functions for learning about 
  pattern matching.
  """

  @doc """
  Use the match operator with a tuple
  """
  def tuple do
    # {"newt", 1, :antidote}
    # "The #{potion} potion needs #{quantity} #{item}"
  end

  @doc """
  Use the match operator with a list, similiar to hd/1 (head)
  and tl/1 (tail).

  Examples

    iex> l = ["gold", "copper", "silver"]
    ["gold", "copper", "silver"]
    iex> [one, two, three] = list
    ["gold", "copper", "silver"]
    iex> [head | tail] = list
    ["gold", "copper", "silver"]
  """
  def list() do
    # IO.puts head
    # tail
  end

  @doc"""
  Pattern matching maps

  Examples

    iex> %{spell: s} = %{spell: "luck"}
    %{spell: s} = %{spell: "luck"}
    iex> s
    "luck"
    iex> t = :type
    :type
    iex> potion = %{t => "good", spell: "luck"}
    %{spell: "luck", type: "good"}
    iex> Wizard.Match.map(potion)
    "A good luck spell."
  """
  # def map(%{spell: s, type: t}) do
    # "A #{t} #{s} spell."
  # end

  @doc"""
  Pattern match on function definitions
  """
  def cast("avada kedavra") do
    "This spell shall not be cast!"
  end

  def cast(spell) do
    "1, 2, 3! #{spell} is cast on thee!!"
  end
end

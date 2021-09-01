defmodule Match do
  @moduledoc """
  This module contains functions for learning about pattern matching in Elixir.
  """

  @doc """
  The match operator matches patterns with variables.
  """
  def variables do
    w = "wizard"

    IO.inspect(w, label: "w = \"wizard\"")
    IO.inspect("wizard" = w, label: "\"wizard\" = w")

    {:ok, "Pattern Matching is the best!"}
  end

  @doc """
  The match operator matches patterns with tuples.
  """
  def tuples do
    {ingredient, quantity, potion} = {"newt", 1, :antidote}

    IO.inspect({ingredient, quantity, potion}, label: "{ingredient, quantity, potion} = {\"newt\", 1, :antidote}")
    IO.puts "Ingredient = #{ingredient}"
    IO.puts "Quantity = #{quantity}"
    IO.puts "Potion = #{potion}"
    IO.puts "The #{potion} potion needs #{quantity} #{ingredient}"

    ok_return = {:ok, "Potion completed"}
    {:ok, ok_message} = ok_return

    error_return = {:error, "Potion failed"}
    {:error, error_message} = error_return

    IO.inspect({:ok, ok_message}, label: "{:ok, message} = ok_return")
    IO.puts "OK Message = #{ok_message}"
    IO.inspect({:error, error_message}, label: "{:error, message} = error_return")
    IO.puts "Error Message = #{error_message}"

    {:ok, "Pattern Matching tuples!"}
  end

  @doc """
  The match operator matches patterns with lists.
  """
  def lists() do
    list = ["gold", "copper", "silver"]
    [one, two, three] = list

    IO.inspect(list, label: "List")
    IO.inspect([one, two, three], label: "[one, two, three] = list")
    IO.puts "One = #{one}"
    IO.puts "Two = #{two}"
    IO.puts "Three = #{three}"


    [head | tail] = list

    IO.inspect([head | tail], label: "List Head and Tail")
    IO.inspect(head, label: "List head")
    IO.inspect(tail, label: "List tail")

    {:ok, "Pattern Matching lists!"}
  end

  @doc """
  The match operator matches patterns with maps.
  """
  def maps() do
    atlas = %{ compass: "rose", direction: "north"}
    %{compass: c, direction: _d} = atlas

    IO.inspect(atlas, label: "%{compass: c, direction: d} = atlas")
    IO.puts "c = #{c}"
    IO.inspect(%{direction: d} = atlas, label: "%{direction: d} = atlas")
    IO.puts "d = #{d}"
    IO.inspect(%{} = atlas, label: "%{} = atlas")

    w = "wizard"
    m = %{w => "Gandolf"}

    IO.inspect(w, label: "W")
    IO.inspect(m, label: "m")

    {:ok, "Pattern Matching maps!"}
  end

  @doc """
  Pattern matching function arguments.
  """
  def cast_spell("avada kedavra") do
    "You have requested the casting of a spell that shall not be cast. Try again."
  end
  def cast_spell(spell) do
    "1, 2, 3! This spell is cast on thee! #{spell}!"
  end

  @doc """
  The underscore marks values in a pattern that do not need to be bound to a variable.
  """
  def wand_flicks(0), do: "Wand doesn't move."
  def wand_flicks(_), do: "Wand flicks!"

  @doc """
  The first function to match is the winner.
  """
  def rank_my_mascot(mascot), do: "A #{mascot} is an ok mascot."
  def rank_my_mascot("phoenix" = mascot), do: "A #{mascot} is the best mascot!"
end

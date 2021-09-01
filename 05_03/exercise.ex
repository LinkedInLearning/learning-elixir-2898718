defmodule Exercise do
  @moduledoc """
  This module contains several exercises. Use what you have learned about lists and
  maps.
  """

  @doc """
  Write a function takes a list and prints out the first element of that list.
  """
  def first(_) do

  end

  @doc """
  Write a function takes a list and prints out the last element of that list.
  """
  def last(_) do

  end

  @doc """
  Return the list with "Carbon" removed from the list.
  """
  def remove() do
    ["Carbon", "Hydrogen", "Ruthenium", "Silicon"]
  end

  @doc """
  Combine the two lists. Return the combined list flattened.
  """
  def flat() do
    ["Carbon", "Hydrogen"]
    ["Tin", ["Lead"]]
  end

  @doc """
  Convert the list to a string.
  """
  def string(_) do

  end

  @doc """
  Wanda the wizard goes to the great wizard library but forgets her book bag to carry them home.
  She collects information on each of the books. When she gets home, she wants to organize the book
  information into maps. Create a list of maps to represent the following books.

  AWizard Compendium, by Vesuvi Monmount, English, 1968, Parnassus Press
  Spells for All Seasons, by Helen Troy, Greek, 1488, Corfu Publishers
  The House of Herbs, by Nikola Wynne, English, 1856, Simon and Shuster
  Cabbage and Casting, by Cilka Parfait, French, 1975, YNNIS
  """
  def books() do

  end

  @doc """
  Write a function to take the list of books, select the first item from the list, and return a list of that map's keys.
  Challenge: can you make use of the functions you've already written?
  """
  def book_keys(_) do

  end


  @doc """
  Run this function to test some of your solutions as you work. These will not completely
  test all the functions.
  """
  def test() do
    IO.puts first([1, 2, 3]) == 1
    IO.puts last([1, 2, 3]) == 3
    IO.puts remove() == ["Hydrogen", "Ruthenium", "Silicon"]
    IO.puts flat() == ["Carbon", "Hydrogen", "Tin", "Lead"]
    IO.puts string(["I", "dig", "Elixir"]) == "IdigElixir"
    IO.puts is_list(books())
    IO.puts book_keys(books()) === [:author, :language, :publisher, :title, :year]
  end
end

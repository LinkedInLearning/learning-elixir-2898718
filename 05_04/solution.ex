defmodule Solution do
  @moduledoc """
  This module contains solutions to the exercises in 05_03.
  """

  @doc """
  Write a function that prints out the first element of the list supplied as the argument.
  """
  def first(list), do: List.first(list)

  @doc """
  Write a function that prints out the last element of the list supplied as the argument.
  """
  def last(list), do: List.last(list)

  @doc """
  Return the list with "Carbon" removed from the list.
  """
  def remove() do
    List.delete(["Carbon", "Hydrogen", "Ruthenium", "Silicon"], "Carbon")
  end

  @doc """
  Combine the two lists. Return the combined list flattened.
  """
  def flat() do
    list1 = ["Carbon", "Hydrogen"]
    list2 = ["Tin", ["Lead"]]

    List.flatten([list1 | list2])
  end

  @doc """
  Convert the list to a string.
  """
  def string(list), do: List.to_string(list)

  @doc """
  Wanda the wizard goes to the great wizard library but forgets her book bag to carry them home.
  She collects information on each of the books. When she gets home, she wants to organize the book
  information into maps. Create a list of maps to represent the following books.

  Wizard Compendium, by Vesuvi Monmount, English, 1968, Parnassus Press
  Spells for All Seasons, by Helen Troy, Greek, 1488, Corfu Publishers
  The House of Herbs, by Nikola Wynne, English, 1856, Simon and Shuster
  Cabbage and Casting, by Cilka Parfait, French, 1975, YNNIS
  """
  def books() do
    [
      %{title: "Wizard Compendium", author: "by Vesuvi Monmount", language: "English", year: 1968, publisher: "Parnassus Press"},
      %{title: "Spells for All Seasons", author: "Helen Troy", language: "Greek", year: 1488, publisher: "Corfu Publishers"},
      %{title: "The House of Herbs", author: "Nikola Wynne", language: "English", year: 1856, publisher: "Simon and Shuster"},
      %{title: "Cabbage and Casting", author: "Cilka Parfait", language: "French", year: 1975, publisher: "YNNIS"}
    ]
  end

  @doc """
  Write a function to take the list of books, select the first item from the list, and return a list of that map's keys.
  Challenge: can you make use of the functions you've already written?
  """
  def book_keys(books) do
    Map.keys(first(books))
  end


  @doc """
  Run this function to test all your solutions.
  """
  def test() do
    IO.puts first([1, 2, 3]) === 1
    IO.puts last([1, 2, 3]) === 3
    IO.puts remove() === ["Hydrogen", "Ruthenium", "Silicon"]
    IO.puts flat() === ["Carbon", "Hydrogen", "Tin", "Lead"]
    IO.puts string(["I", "dig", "Elixir"]) === "IdigElixir"
    IO.puts is_list(books())
    IO.puts book_keys(books()) === [:author, :language, :publisher, :title, :year]
  end
end

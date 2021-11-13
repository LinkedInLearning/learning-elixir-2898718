defmodule Wizard.KeywordList do
  @moduledoc """
  This module contains functions for learning about data types in Elixir.

  # Variables
  Variable names can include uppercase or lowercase letters, underscores, or numbers,
  but they must start with a lowercase letter or an underscore.

  # Immutability
  Variables are immutable. Once a variable is bound, it cannot change. It can only be rebound.
  """

  @doc """
  The Kernel function `is_atom` will return true if the argument it receives
  is an atom
  """
  def atoms() do
    IO.puts ":ok is an atom? #{is_atom(:ok)}"
    IO.puts "false is an atom? #{is_atom(false)}"
    IO.puts "nil is an atom? #{is_atom(nil)}"
    IO.puts "atom name with quotation marks? #{is_atom(:"space atom!")}"
    IO.puts ":Proton == :Proton? #{:Proton == :Proton}"
    IO.puts ":neutron == :positron? #{:neutron == :positron}"
    IO.inspect(charm("good"), label: "Function success")
    IO.inspect(charm("bad"), label: "Function success")
    IO.puts "Erlang pi: #{:math.pi()}"
    {:ok, "Atoms!"}
  end

  def charm(type) do
    if type == "good" do
      {:ok, "luck"}
    else
      {:error, "curse"}
    end
  end

  @doc """
  Tuples are fixed but fast containers.

  The Kernel function `is_tuple` will return true if the argument it receives
  is an tuple
  """
  def tuples() do
    t = {:hex, 6, "six"}

    IO.inspect "#{is_tuple(charm("good"))}"
    IO.inspect t
    IO.inspect(tuple_size(t), label: "Tuple size")
    IO.inspect Tuple.append(t, :spell)

    new_tuple =  Tuple.insert_at(t, 1, :"abbra cadabra")

    IO.inspect new_tuple
    IO.inspect put_elem(new_tuple, 3, 3)
    {:ok, "Tuples!"}
  end

  @doc """
  The Kernel function `is_list` will return true if the argument it receives
  is an list
  """
  def lists() do
    ingredients = ["bismuth", 86, {:ok, "copper"}]

    IO.inspect([:gold | ingredients], label: "Prepend [:gold | ingredients]")
    IO.inspect(ingredients ++ [:gold], label: "Append ingredients ++ [:gold]")
    IO.inspect([12, 6, 54] ++ [100, 12], label: "[12, 6, 54] ++ [100, 12]")
    IO.inspect([12, 100, 6] -- ["100", 12], label: "[12, 100, 6] -- [\"100\", 12]")
    IO.inspect(hd(ingredients), label: "hd([\"bismuth\", 86, {:ok, \"copper\"}])")
    IO.inspect(tl(ingredients), label: "tl([\"bismuth\", 86, {:ok, \"copper\"}])")
    IO.inspect(length(ingredients), label: "length([\"bismuth\", 86, {:ok, \"copper\"}])")
    {:ok, "Lists!"}
  end

  def keyword_lists() do
    keyword_list =  [a: "atom", a: "alchemy", b: "bat"]

    IO.inspect(keyword_list, label: "Keyword List")
    IO.inspect(Keyword.get(keyword_list, :a), label: "Keyword.get/3")
    IO.inspect(Keyword.get_values(keyword_list, :a), label: "Keyword.get_values/2")

    {:ok, "Keyword Lists!"}
  end

  

end

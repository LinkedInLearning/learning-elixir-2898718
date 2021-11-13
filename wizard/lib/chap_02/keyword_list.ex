defmodule Wizard.KeywordList do
  @moduledoc """
  This module contains functions for learning 
  about the Keyword List data type in Elixir.
  """

  @doc """
  The Kernel function `is_list` will return TRUE if the 
  argument it receives is a list
  """
  def check(value) do
    is_list(value)
  end

  def add(list, value) do
    IO.inspect [value | list]
    IO.inspect list ++ [value]
    :ok
  end

  def demo do
    a = ["bismuth", 86, {:ok, "copper"}]

    IO.inspect(a, label: "List")
    IO.puts "First element: #{List.first(a)}"
    IO.inspect(hd(a), label: "List Head")
    IO.inspect(tl(a), label: "List Tail")
    IO.inspect(length(a), label: "List Length")
  end
end

defmodule Wizard.KeywordList2 do
  @moduledoc """
  This module contains functions for learning about data types in Elixir.

  # Variables
  Variable names can include uppercase or lowercase letters, underscores, or numbers,
  but they must start with a lowercase letter or an underscore.

  # Immutability
  Variables are immutable. Once a variable is bound, it cannot change. It can only be rebound.
  """

  def keyword_lists() do
    keyword_list =  [a: "atom", a: "alchemy", b: "bat"]

    IO.inspect(keyword_list, label: "Keyword List")
    IO.inspect(Keyword.get(keyword_list, :a), label: "Keyword.get/3")
    IO.inspect(Keyword.get_values(keyword_list, :a), label: "Keyword.get_values/2")

    {:ok, "Keyword Lists!"}
  end

  

end

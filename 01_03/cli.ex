defmodule CLI do
  @moduledoc """
  This module holds all of the command line interface (CLI) code demonstrated in the course. In the comman line, we use Elixir's interactive shell (IEx).
  You can copy and paste the code from here to follow along with the CLI examples in the videos.

  To exit out of Elixir's interactive shell, press `Ctrl+C` twice or press `Ctrl+C` followed by `a`

  # 02_XX

  ## Examples

  ### Start

  > iex

  ### Help

  iex> h()

  ### Evaluate expressions

  2

  2 + 2

  3.5 + 2

  "potion"

  'potion'

  to_charlist("potion")

  to_string('potion')

  "potion" \
  |> to_charlist() \
  |> to_string()

  c("01_03/cli.ex")
  """

  def main() do
    name = "wizard"
    item = "potion"
    IO.puts("Welcome to the laboratory, #{name}. Let's make a #{item}!")
  end

  def sum(a, b) do
    a + b
  end

  def mixture(potion_a, potion_b) do
    IO.puts("Mixing #{potion_a} with #{potion_b}!")
  end

  @doc """
  ADVANCED

  In Elixir, a string is a UTF-8 encoded binary. The Kernel function, `is_binary`
  will return TRUE for a string.

  Try calling this function with different types values:

  iex> c("01_03/cli.ex")
  iex> potion = 2
  2
  iex> CLI.transmogrify(potion)
  "2"
  iex> potion = "José Valim"
  iex> CLI.transmogrify(potion)
  "José Valim"
  iex> potion = 'José Valim'
  iex> CLI.transmogrify(potion)
  [74, 111, 115, 233, 32, 86, 97, 108, 105, 109]
  """
  def transmogrify(potion) do
    if is_binary(potion) do
      to_charlist(potion)
    else
      to_string(potion)
    end
  end
end

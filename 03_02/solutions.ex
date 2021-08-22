defmodule Solutions do
  @moduledoc """
  This module contains solutions to the exercises.
  To run this file, type the following in an iex session

  iex> c("03_02/solutions.ex")
  [Solutions]
  iex> Solutions.run()
  true
  """

  @doc """
  The logical operators "and", "or", "not", "&&", "||", and "!".
  """
  def run() do
    answer_1 = 3 # or any digit
    test_1 = is_integer(answer_1)

    answer_2 = 3.25 # or any float
    test_2 = is_float(answer_2)

    answer_3 = "string" # or any binary
    test_3 = is_binary(answer_3)

    answer_4 = [3, 10, "string"] # or any list
    test_4 = is_list(answer_4)

    answer_5 = 1 # or any value that evaluates to true
    test_5 = true and answer_5

    answer_6 = "string" # or any value that evalutes to true
    test_6 = nil || answer_6

    answer_7 = false # or any value that evalutes to false
    test_7 = not answer_7

    answer_8 = "not an atom" # or any value that is not an atom
    test_8 = !is_atom(answer_8)

    answer_9 = :string # or any value that evalutes to true
    test_9 = false or answer_9

    answer_10 = "string" # or any string 1 character or longer
    test_10 = String.length(answer_10) && true

    answer_11 = %{"distance" => "20km"} # or a map with any true value for the key "distance"
    test_11 = Map.get(answer_11, "distance") && true

    test_1 && test_2 && test_3 && test_4 && test_5 && test_6 && test_7 && test_8 && test_9 && test_10 && test_11
  end
end

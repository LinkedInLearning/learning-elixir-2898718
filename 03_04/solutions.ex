defmodule Solutions do
  @moduledoc """
  This module contains solutions to the exercises.
  To run this file, type the following in an iex session

  iex> c("03_04/solutions.ex")
  [Solutions]
  iex> Solutions.run()
  true
  """

   @doc """
  The logical operators "and", "or", "not", "&&", "||", and "!".
  """
  def run() do
    answer_1 = 2
    test_1 = answer_1+10 == 12

    answer_2 = 3.25
    test_2 = 10.75-answer_2 == 7.5

    answer_3 = 2
    test_3 = 10*answer_3 == 20

    answer_4 = 10
    test_4 = answer_4/2 == 5

    answer_5 = 3
    test_5 = answer_5 == 3

    answer_6 = 2 # or any value not equal to 10
    test_6 = 0 != answer_6

    answer_7 = 10.0
    test_7 = answer_7===10.0

    answer_8 = 3.25 # or any value not equal to 0
    test_8 = answer_8 !== 0

    answer_9 = 4 # or any value not equal to 3.25
    test_9 = answer_9 > 3.25

    answer_10 = 10.76 # or any value greater than or equal to 10.75
    test_10 = 10.75 <= answer_10

    test_1 && test_2 && test_3 && test_4 && test_5 && test_6 && test_7 && test_8 && test_9 && test_10
  end
end

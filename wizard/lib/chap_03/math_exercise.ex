defmodule Wizard.MathExercise do
  @moduledoc """
  This an exercise module for you to use what you 
  have learned so far about mathematical and comparison 
  operators.

  Replace the 0 value for all of the `answer_` variables 
  with a value that will make the corresponding `test_` 
  operation return true.

  To test out your answers, recompile and call the function.

  iex> Wizard.MathExercise.run()

  If your answers are correct, the function will return true. 
  If not, the function will return false.
  If you get a false, try again. If you get stuck you can 
  consult branch 03_04e.
  """

  def run() do
    answer_1 = 0
    test_1 = answer_1+10 == 12

    answer_2 = 0
    test_2 = 10.75-answer_2 == 7.5

    answer_3 = 0
    test_3 = 10*answer_3 == 20

    answer_4 = 0
    test_4 = answer_4/2 == 5

    answer_5 = 0
    test_5 = answer_5 == 3

    answer_6 = 0
    test_6 = 0 != answer_6

    answer_7 = 0
    test_7 = answer_7===10.0

    answer_8 = 0
    test_8 = answer_8 !== 0

    answer_9 = 0
    test_9 = answer_9 > 3.25

    answer_10 = 0
    test_10 = 10.75 <= answer_10

    test_1 && test_2 && test_3 && test_4 && test_5 && test_6 && test_7 && test_8 && test_9 && test_10
  end
end

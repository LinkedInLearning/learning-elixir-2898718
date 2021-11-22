defmodule Wizard.MatchExercise do
  @moduledoc """
  This an exercise module for you to use what you 
  have learned so far.

  Your exercise is to write as many function definitions as 
  you need to meet all of the rules listed below.

  Rules:
  * gunpowder cannot mix with any other ingredient
  * dust can mix with anything
  * ginger can only mix with rose, but only as the second ingredient
  * rose can mix with ginger and moondew
  * moondew cannot mix with ginger
  
  Hint 1: the underscore. Prepend a variable name with an
  underscore if the variable is not used. 

  Hint 2: the order of function definitions matters. The first 
  pattern to match wins.

  To test you code, call the function test/0. If you have
  successfully defined all of the function to meet the rules,
  the function will return true. Otherwise, it will return 
  false.

  Example

    iex. Wizard.MatchExercise.test()
    true
  """

  @doc """
  Accepts two arguments and varifies that two agruments can 
  be combined safely. Returns true or false.
  """
  def can_mix?(_a, _b) do
    false
  end

  @doc """
  Test your function definitions
  """
  def test() do
    !can_mix?("gunpowder", "anything") 
    && !can_mix?("anything", "gunpowder") 
    && can_mix?("rose", "ginger") 
    && can_mix?("rose", "moondew")
    && can_mix?("moondew", "rose")
    && !can_mix?("moondew", "ginger")
    && !can_mix?("ginger", "moondew")
    && can_mix?("mandrake", "spider eggs")
  end
end

defmodule Wizard.Recursion do
  @moduledoc """
  Recursion is when a function calls itself.
  """

  @doc """
  Accept an integer.
  Add 1 to the integer and bind the result to the variable 
  `sum`.
  
  Output `sum` using IO.puts/2.
  
  Send `sum` to infinty/1 to repeat the process infinitely.
  """
  def infinity(i) do
    sum = i + 1
    IO.puts(sum)
    infinity(sum)
  end

  @doc """
  Accept an integer and a counter representing the number of 
  times to repeat the process.

  * Sum 1 and the integer. Subtract 1 from the counter.
  * Output the sum using IO.puts/2.
  * Send the sum and the reduced counter to add_one/2.
  
  When the counter reaches 1, output the final sum but do 
  not send it to add_one/2 any more.
  """
  def add_one(i, counter) when is_integer(i) 
  and is_integer(counter) 
  and counter <= 1 do
    IO.puts(i + 1)
  end

  def add_one(i, counter) when is_integer(i) 
  and is_integer(counter) do
    sum = i + 1
    reduced_counter = counter - 1
    IO.puts(sum)
    add_one(sum, reduced_counter)
  end
end
"""
Pure Functions

This function takes two arguments: a and b
It returns the product of a and b
But it does NOT change the value of a or b
"""
def multiply(a, b) do
  a * b
end


"""
First-Class Functions

Here we assign a function to a the variable `multiply` in the command line interface (CLI)
Then we call the function with arguments 2 and 5
The returned value is 10

iex> multiply = fn(a, b) -> a * b end
iex> multiply.(2, 5)
10

Next we define a function that takes an argument and prints it out
Then we call the Enum function, passing two arguments:
  1. a list
  2. the function
"""
def show(l) do
  IO.puts(l)
end
Enum.map(["a", "b", "c"], fn(l) -> show(l) end)


"""
Recursion
"""
def fibonacci(n) do
  if (n <= 1) do
    1
  else
    fibonacci(n -1) + fibonacci(n -2)
  end
end


"""
Immutability:

First `a` is bound to 1
Then `a` is rebound to "apple"

iex> a = 1
iex> a = “apple”
"""

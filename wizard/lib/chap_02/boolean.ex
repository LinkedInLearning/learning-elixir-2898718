defmodule Wizard.Chap02.Boolean do
  @moduledoc """
  This module contains functions for learning about the Boolean data type.

  # Variables
  Variable names can include uppercase or lowercase letters, underscores, or numbers,
  but they must start with a lowercase letter or an underscore.

  # Immutability
  Variables are immutable. Once a variable is bound, it cannot change. It can only be rebound.
  """

  @doc """
  Define a boolean
  """
  def define() do
    definition = "A Boolean is either the atom true or the atom false. The atom nil evaluates to false in control flow."
    {:ok, definition}
  end

  @doc """
  The Kernel function `is_boolean` will return true if the argument it receives
  is a boolean.
  """
  def booleans() do
    IO.puts "true? #{is_boolean(true)}"
    IO.puts "\"true\"? #{is_boolean("true")}"
    IO.puts "false? #{is_boolean(false)}"
    {:ok, "Booleans!"}
  end
end

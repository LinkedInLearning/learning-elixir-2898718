defmodule Wizard.Atom do
  @moduledoc """
  This module contains functions for learning 
  about the Atom data type in Elixir.
  """

  @doc """
  The Kernel function `is_atom` will return TRUE 
  if the argument it receives is an atom
  """
  def check(value) do
    is_atom(value)
  end

  def charm do
    :ok
  end

  def curse do
    :error
  end

  def pi do
    :math.pi()
  end
end

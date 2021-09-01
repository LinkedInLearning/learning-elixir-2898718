defmodule Pin do
  @moduledoc """
  This module contains functions for learning about the pin operator in Elixir.
  """

  @doc """
  The ^ pin operator with a variable
  """
  def variable do
    x = 3

    IO.puts "x = #{x}"
    IO.puts "^x = 3 #{^x = 3}"

    {:ok, "Pin ^ Operator!"}
  end

  @doc """
  The ^ pin operator with a map key
  """
  def key do
    w = "wizard"
    m = %{w => "wise"}

    IO.puts "w = #{w}"
    IO.inspect(m, label: "m")
    IO.inspect(%{^w => v} = m, label: "%{^w => v} = m")
    IO.puts "v = #{v}"

    {:ok, "Pin ^ Operator!"}
  end
end

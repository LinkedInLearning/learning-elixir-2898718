defmodule Wizard.Pin do
  @moduledoc """
  This module contains functions for learning about 
  pin operator.
  """

  @doc """
  The ^ pin operator with a variable

  Examples

    iex> potion = %{type: "good", spell: "luck"}
    %{spell: "luck", type: "good"}
    iex> Wizard.Pin.spell(:type, potion)
    "This spell is good luck"
    iex> Wizard.Pin.spell(:type, %{spell: "luck"})
    ** (MatchError) no match of right hand side value: %{spell: "luck"}
    lib/chap_04/pin.ex:18: Wizard.Pin.spell/2
    iex> Wizard.Pin.spell(:spell, %{spell: "luck"})
    %{spell: "luck"}
  """
  def spell(type, map) do
    %{^type => a} = map
    "This spell is #{a}."
  end

end

defmodule Modules.Intro do
  @moduledoc """
  Registration functions for the wizard convention.

  In a real application, the list of guests would come from storage, such
  as a database. We aren't working with databases here, so a list it is!
  """
  @guests ["Casey", "Riley", "Jessie", "Peyton", "Pat"]

  @doc """
  Register a WizCon guest. Take a name, create a guest, and return their
  schedule.
  """
  def register(name \\ "Wise and Wonderful") do
    id = add_guest(name)

    "Registration successful! Your ID is #{id}. Let the magic begin, #{name}!"
  end

  defp add_guest(name) when is_binary(name) do
    Enum.count(@guests) + 1
  end

  defp add_guest(_), do: nil
end

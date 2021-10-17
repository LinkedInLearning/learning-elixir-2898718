defmodule Modules.Intro do
  @moduledoc """
  Registration functions for the wizard convention.

  In a real application, the list of guests would come from storage, such
  as a database. We aren't working with databases here, so a list it is!
  """
  @specialties ["Elements", "Incantations", "Abjuration", "Enchantment"]

  @doc """
  Register a WizCon guest. Take a name. Return welcome wiht randome ID.
  """
  def register(name) when is_binary(name) do
    add_guest(name)
  end

  def register(_), do: "Guest not registered."

  defp add_guest(name) when is_binary(name) do
    random_number = :rand.uniform(100)
    speciality = Enum.random(@specialties)
    "#{name} registered to ID #{random_number}. Attend our events to learn more about #{speciality}. Let the magic begin!"
  end

  defp add_guest(_), do: nil
end

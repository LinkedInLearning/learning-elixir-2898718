defmodule Wizard.Con.Guest do
  @moduledoc """
  Handle event guests.
  """
  
  defp new(name) do
    id = :rand.uniform(100)
    speciality = Enum.random(@specialties)
    events = events()

    %{id: id, name: name, events: events, speciality: speciality}
  end
end

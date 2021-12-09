defmodule Wizard.Con.Guest do
  @moduledoc """
  Handle event guests.
  """
  @specialties ["Elements", "Incantations", "Abjuration", "Enchantment"]
  alias Wizard.Con.EventSchedule, as: Schedule
  
  defp new(name) do
    id = :rand.uniform(100)
    speciality = Enum.random(@specialties)
    events = Schedule.events()

    %{id: id, name: name, events: events, speciality: speciality}
  end
end

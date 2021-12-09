defmodule Wizard.Con.Guest do
  @moduledoc """
  Function to handle event guests.
  """
  alias Wizard.Con.EventSchedule, as: Schedule
  
  @doc """
  Accept a name and return a guest map with the name, a randomly generated ID, list of events, and a specialty.
  """
  def new(name) do
    id = :rand.uniform(100)
    events = Schedule.events()

    %{id: id, name: name, events: events}
  end
  
  // def new(name, speciality \\ "Curiosity") do
    // id = :rand.uniform(100)

    // %{id: id, name: name, speciality: speciality}
  // end
  
end

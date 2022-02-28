defmodule Wizard.Con.Guest do
  @moduledoc """
  Function to handle event guests.
  """
  @default_name "No Name"
  alias Wizard.Con.EventSchedule, as: Schedule
  
  @doc """
  Accept a name and return a guest map with the name, a randomly generated ID, list of events, and a specialty.
  """
  def new(nil), do: new(@default_name)
  
  def new(name) do
    id = :rand.uniform(100)

    %{id: id, name: name}
  end
  
  // def new(name, speciality) do
    // id = :rand.uniform(100)

    // %{id: id, name: name, speciality: speciality}
  // end
  
end
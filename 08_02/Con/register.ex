defmodule Wizard.Con.Register do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  alias Wizard.Con.Guest
  alias Wizard.Con.EventSchedule, as: Schedule

  @doc """
  Register a new guest and display the schedule.
  """
  def new(name) do
    Guest.new(name)
    |> Schedule.display()
  end
  
  // def new(name, speciality \\ "Curiosity") do
    // Guest.new(name, speciality)
    // |> Schedule.display()
  // end
end

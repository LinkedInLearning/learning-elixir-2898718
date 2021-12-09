defmodule Wizard.Con.Register do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  alias Wizard.Con.Guest
  alias Wizard.Con.EventSchedule, as: Schedule

  @doc """
  Register a new guest and display the schedule.
  """
  def new(name, speciality \\ "Curiosity") do
    Guest.new(name, speciality)
    |> Schedule.add()
    |> display()
  end

  defp display(guest) do
    IO.puts "#{guest.name}: Master of #{guest.speciality}"
    for event <- guest.events, do: IO.puts event
    "Let the magic begin!"
  end
end
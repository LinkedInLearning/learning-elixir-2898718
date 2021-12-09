defmodule Wizard.Con.EventSchedule do
  @moduledoc """
  Handle event display.
  """

  @doc """
  Get the convention schedule sorted by the time of events
  """
  def get() do
    schedule()
    |> Enum.sort()
  end

  defp schedule() do
    [
      "11:00 - Wands in Room A",
      "09:00 - Alchemy in Room B",
      "15:00 - Advanced Cauldrons in Room B",
      "13:00 - Elements 101 in Room A"
    ]
  end
  
  @doc """
  Print out the schedule
  """
  def display(nil), do: "Guest not registered."

  def display(wizard) do
    display_welcome(wizard.name, wizard.speciality)
    display_events(wizard.events)
    "Let the magic begin!"
  end

  defp display_welcome(name, speciality) do
    IO.puts "Welcome #{name}, Master of #{speciality}"
  end

  defp display_events(events) do
    for event <- events, do: IO.puts event
  end
end

defmodule Wizard.Con.EventSchedule do
  @moduledoc """
  Functions to handle event display.
  """
  
  @doc """
  Print out the schedule
  """
  def display(nil), do: "Guest not registered."

  def display(wizard) do
    IO.puts "#{wizard.name}: Master of #{wizard.speciality}"
    for event <- get(), do: IO.puts event
  end

  @doc """
  Get the schedule and sort it by time
  """
  def get() do
    schedule()
    |> Enum.sort()
  end

  defp schedule() do
    [
      "11:00 - #{event("wands")} in Room A",
      "09:00 - #{event(" ALCHEMY ")} in Room B",
      "15:00 - #{event("Advanced Cauldrons")} in Room B",
      "13:00 - #{event("ELeMeNtS")} 101 in Room A"
    ]
  end
  
  defp event(e) do
    e
    |> String.downcase()
    |> String.trim()
    |> String.capitaize
  end
end

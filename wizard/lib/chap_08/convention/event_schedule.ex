defmodule Wizard.Con.EventSchedule do
  @doc """
  Add events to a map
  """
  def add(value) when is_map(value) do
    Map.put(value, :events, get())
  end

  @doc """
  Get the schedule and sort it by time
  """
  def get(), do: schedule() |> Enum.sort()

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
    |> String.capitalize()
  end
end

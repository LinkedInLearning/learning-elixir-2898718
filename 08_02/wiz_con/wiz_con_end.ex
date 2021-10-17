defmodule WizConEnd do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  alias WizCon.Guest

  @doc """
  Register a WizCon guest. Take a name, create a guest, and return their
  schedule.
  """
  def register(name \\ "Wise and Wonderful", speciality \\ nil) do
    add_guest(name, speciality)
    |> display()
  end

  defp add_guest(name, speciality) do
    id = :rand.uniform(100)
    events = events()

    %Guest{id: id, name: name, events: events, speciality: speciality}
  end

  # TODO end of chapter question: why don't I use IO.puts on the last line of this function?
  def display(wizard) do
    display_welcome(wizard.name, wizard.speciality)
    display_events(wizard.events)
    "Let the magic begin!"
  end

  defp display_welcome(name, nil) do
    IO.puts "Welcome #{name}! Find your speciality at one of our events!"
  end

  defp display_welcome(name, speciality) do
    IO.puts "Welcome #{name}, Master of #{speciality}"
  end

  defp display_events(events) do
    for event <- events, do: IO.puts event
  end

  def events() do
    get_events()
    |> Enum.sort()
    |> Enum.map(fn event ->
      event
      |> String.replace(";", " - ")
      |> String.replace("/", " in ")
    end)
  end

  defp get_events() do
    [
      "11:00;Wands/Room A",
      "09:00;Alchemy/Room B",
      "15:00;Advanced Cauldrons/Room B",
      "13:00;Elements 101/Room A"
    ]
  end
end

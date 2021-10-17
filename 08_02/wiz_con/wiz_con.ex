defmodule WizCon do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  @specialties ["Elements", "Incantations", "Abjuration", "Enchantment"]
  alias WizCon.Guest

  @doc """
  Register a WizCon guest. Take a name, create a guest, and return a schedule.
  """
  def register(name \\ "Wise and Wonderful") do
    add_guest(name)
    |> display()
  end

  defp add_guest(name) do
    id = :rand.uniform(100)
    speciality = Enum.random(@specialties)
    events = events()

    %Guest{id: id, name: name, events: events, speciality: speciality}
  end

  @doc """
  Print out a WizCon schedule for a guest.
  """
  def display(nil), do: "Guest not registered."

  # TODO end of chapter question: why don't I use IO.puts on the last line of this function?
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

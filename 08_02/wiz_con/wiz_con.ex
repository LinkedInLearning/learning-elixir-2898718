defmodule WizCon do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  @specialties ["elements", "incantations", "abjuration", "enchantment"]
  @names ["Casey", "Riley", "Jessie", "Peyton", "Aspen", "Adrian", "Pat", "Jackie", "Sam", "Carson"]

  alias WizCon.Guest

  @doc """
  Register a WizCon guest. Take a name, create a guest, and return their
  schedule.
  """
  def register(name \\ "Wise and Wonderful") do
    add_guest(name)
    |> display_schedule()
  end

  defp add_guest(name) when is_binary(name) do
    guests = guests()
    next_id = Enum.count(guests)
    [guests(next_id, name) | guests]
  end

  defp add_guest(_), do: guests()

  defp guests() do
    for n <- 0..9 do
      guests(n, Enum.at(@names, n))
    end
  end

  defp guests(id, name) do
    speciality = Enum.random(@specialties)
    events = all_events()
      |> List.delete_at(Enum.random(0..3))
      |> Enum.map(fn event -> event_data(event) end)
      |> Enum.sort_by(fn {_, time} -> time end)
      |> Enum.map(fn {event, time} -> "#{time} - #{event}" end)

    %Guest{id: id, name: name, events: events, speciality: speciality}
  end

  @doc """
  Take a list of guests and return a print out of the first wizard's WizCon schedule.
  """
  def display_schedule([wizard | guests]) do
    IO.puts "Welcome #{wizard.name}!"
    IO.puts "Your speciality is #{wizard.speciality}"
    IO.puts "Your WizCon Schedule is "

    for event <- wizard.events, do: IO.puts event

    IO.inspect(colleagues(wizard, guests), label: "Wizards who share your speciality")

    "Let the magic begin, #{wizard.name}!"
  end

  def display_schedule(nil), do: "Guest could not be registered."

  defp colleagues(wizard, guests) do
    Enum.reduce(guests, [], fn guest, acc ->
      if guest.speciality == wizard.speciality do
        [guest.name | acc]
      else
        acc
      end
    end)
    |> Enum.join(", ")
  end

  defp event_data(0), do: {"Alchemy", "09:00"}

  defp event_data(1), do: {"Wands", "11:00"}

  defp event_data(2), do: {"Elements 101", "13:00"}

  defp event_data(3), do: {"Advanced Cauldrons", "15:00"}

  defp event_data(_), do: {"Free Time", "00:00"}

  defp all_events(), do: Enum.into(0..3, [])
end

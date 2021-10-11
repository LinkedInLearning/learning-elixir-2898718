defmodule WizConEnd do
  @moduledoc """
  Registration functions for the wizard convention.
  """
  @specialties ["elements", "incantations", "abjuration", "enchantment"]
  @names ["Casey", "Riley", "Jessie", "Aspen", "Pat", "Sam", "Carson"]

  alias WizCon.Guest

  @doc """
  Register a WizCon guest. Take a name, create a guest, and return their
  schedule.
  """
  def register(name \\ "Wise and Wonderful", speciality \\ nil)

  def register(name, speciality) do
    add_guest(name, speciality)
    |> display_schedule()
  end

  defp add_guest(name, speciality) when is_binary(name) do
    guests = guests()
    next_id = Enum.count(guests)
    [add_guest(next_id, name, speciality) | guests]
  end

  defp add_guest(_, _), do: guests()

  defp add_guest(id, name, speciality) do
    events = all_events()
      |> List.delete_at(Enum.random(0..3))
      |> Enum.map(fn event -> event_data(event) end)
      |> Enum.sort_by(fn {_, time} -> time end)
      |> Enum.map(fn {event, time} -> "#{time} - #{event}" end)

    %Guest{id: id, name: name, events: events, speciality: speciality}
  end

  defp guests() do
    for n <- 0..Enum.count(@names) do
      speciality = Enum.random(@specialties)
      add_guest(n, Enum.at(@names, n), speciality)
    end
  end

  @doc """
  Take a list of guests and return a print out of the first wizard's WizCon schedule.
  """
  def display_schedule([]), do: "Guest not registered."

  def display_schedule([wizard | guests]) do
    IO.puts "Welcome #{wizard.name}!"

    display_speciality(wizard.speciality)

    IO.puts "Your WizCon Schedule is "

    for event <- wizard.events, do: IO.puts event

    colleagues = colleagues(wizard, guests)
    display_colleagues(colleagues)

    "Let the magic begin, #{wizard.name}!"
  end

  defp display_speciality(nil) do
    IO.puts "Find your speciality at one of our events!"
  end

  defp display_speciality(speciality) do
    IO.puts "Your speciality is #{speciality}"
  end

  defp display_colleagues(""), do: nil

  defp display_colleagues(colleagues) do
    IO.inspect(colleagues, label: "Wizards who share your speciality")
  end

  defp colleagues(wizard, guests) do
    Enum.reduce(guests, [], fn guest, acc ->
      guest_speciality = guest.speciality |> String.downcase()
      wizard_speciality = wizard.speciality |> String.downcase()
      if guest_speciality == wizard_speciality do
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

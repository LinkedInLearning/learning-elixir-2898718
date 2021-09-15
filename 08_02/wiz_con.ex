defmodule WizCon do
    @moduledoc """
    This module contains functions for the wizard convention to introduce
    Elixir functions.
    """
    @specialties ["elements", "incantations", "abjuration", "enchantment"]
    @names ["Casey", "Riley", "Jessie", "Peyton", "Aspen", "Adrian", "Pat", "Jackie", "Sam", "Carson"]

    alias WizCon.Attendee

    @doc """
    Register a WizCon attendee. Take a name, create an attendee, and return their
    schedule.
    """
    def register(name \\ "Great and Powerful") do
        attendees()
        |> add_attendee(name)
        |> display_schedule()
    end

    @doc """
    Take a list of attendees and return a print out of the first wizard's WizCon schedule.
    """
    def display_schedule([wizard | attendees]) do
        IO.puts "#{wizard.name}'s WizCon Schedule: "

        for event <- wizard.events, do: IO.puts event

        IO.inspect(colleagues(wizard, attendees), label: "Wizards who share your speciality")

        "Let the magic begin, #{wizard.name}!"
    end
    def display_schedule(nil), do: "Attendee could not be registered."

    defp colleagues(wizard, attendees) do
        Enum.reduce(attendees, [], fn attendee, acc ->
            if attendee.speciality == wizard.speciality do
                [attendee.name | acc]
            else
                acc
            end
        end)
        |> Enum.join(", ")
    end

    defp attendees() do
        for n <- 0..9 do
            attendees(n, Enum.at(@names, n))
        end
    end
    defp attendees(id, name) when is_integer(id) and is_binary(name) do
        speciality = Enum.random(@specialties)
        events = all_events()
            |> List.delete_at(Enum.random(0..3))
            |> Enum.map(fn event -> event_data(event) end)
            |> Enum.sort_by(fn {_, time} -> time end)
            |> Enum.map(fn {event, time} -> "#{time} - #{event}" end)

        %Attendee{id: id, name: name, events: events, speciality: speciality}
    end

    defp add_attendee(attendees, name) when is_binary(name) do
        next_id = Enum.count(attendees)
        [attendees(next_id, name) | attendees]
    end
    defp add_attendee(attendees, _), do: attendees

    defp event_data(0), do: {"Alchemy", "09:00"}
    defp event_data(1), do: {"Wands", "11:00"}
    defp event_data(2), do: {"Elements 101", "13:00"}
    defp event_data(3), do: {"Advanced Cauldrons", "15:00"}
    defp event_data(_), do: {"Free Time", "00:00"}

    defp all_events(), do: for e <- 0..3, do: e
end

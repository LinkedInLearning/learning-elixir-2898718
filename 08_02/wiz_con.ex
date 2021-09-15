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
        |> schedule()
    end

    @doc """
    Take a list of attendees and return a print out of the first wizard's WizCon schedule.
    """
    def schedule([wizard | attendees]) do
        IO.puts "#{wizard.name}'s WizCon Schedule: "

        handled_events = handle_events(wizard.events)
        for {event, time} <- handled_events, do: IO.puts "#{time} - #{event}"

        colleagues = colleagues(wizard, attendees)
        IO.inspect(colleagues, label: "Wizards who share your speciality")
        "Use your free time to meet these Wizards who share your speciality: #{colleagues}."

        "Let the magic begin, #{name}!"
    end
    def schedule(nil), do: "Attendee could not be registered."

    @doc """
    Register a WizCon attendee. Take a name, create an attendee, and return their
    schedule.
    """
    def old_register(name \\ "Great and Powerful") do
        attendee = attendees(13, name)
        schedule(attendee)
    end

    @doc """
    Take an attendee and return a print out of their WizCon schedule.
    """
    def old_schedule(%{name: name, events: events} = attendee) do
        colleagues = old_colleagues(attendee)

        IO.puts "#{name}'s WizCon Schedule: "
        for {event, time} <- handle_events(events), do: IO.puts "#{time} - #{event}"
        IO.inspect(colleagues, label: "Wizards who share your speciality")
        "Use your free time to meet these Wizards who share your speciality: #{colleagues}."
        "Let the magic begin, #{name}!"
    end
    def old_schedule(nil), do: "Attendee could not be registered."

    @doc """
    Take a list of events ids. Match each event id to a tuple of the event name
    and the time the event occurs. Return a list of two-item tuples.
    """
    def handle_events(events), do: handle_events(events, [])
    def handle_events([event | tail], acc) do
        handle_events(tail, [event_data(event) | acc])
    end
    def handle_events([], acc), do: Enum.sort_by(acc, fn {_, time} -> time end)

    defp event_data(0), do: {"Alchemy", "09:00"}
    defp event_data(1), do: {"Wands", "11:00"}
    defp event_data(2), do: {"Elements 101", "13:00"}
    defp event_data(3), do: {"Advanced Cauldrons", "15:00"}
    defp event_data(_), do: {"Free Time", "00:00"}

    defp old_colleagues(%{speciality: speciality}) do
        names = Enum.reduce(attendees(), [], fn attendee, acc ->
            old_colleagues(speciality, attendee, acc)
            end)
        Enum.join(names, ", ")
    end
    defp old_colleagues(speciality, %{speciality: attendee_speciality, name: attendee_name}, acc) do
        if attendee_speciality == speciality do
            [attendee_name | acc]
        else
            acc
        end
    end

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

    defp attendees(id, name) when is_integer(id) and is_binary(name) do
        events = List.delete_at(all_events(), Enum.random(0..3))
        speciality = Enum.random(@specialties)
        %Attendee{id: id, name: name, events: events, speciality: speciality}
    end
    defp attendees() do
        for n <- 0..9 do
            attendees(n, Enum.at(@names, n))
        end
    end

    def add_attendee(attendees, name) when is_binary(name) do
        next_id = Enum.count(attendees)
        [attendees(next_id, name) | attendees]
    end
    def add_attemdee(attendees, _), do: attendees

    defp all_events(), do: for e <- 0..3, do: e
end

defmodule Functions do
    @moduledoc """
    This module contains functions for the wizard convention to introduce
    Elixir functions.
    """

    @doc """
    Register a WizCon attendee. Take a name, create an attendee, and return their
    schedule.
    """
    def register(name) do
        attendee = attendees(name)
        schedule(attendee)
    end

    @doc """
    Take an attendee and return a print out of their WizCon schedule.
    """
    def schedule(%{name: name, events: events}) do
        IO.puts "#{name}'s WizCon Schedule: "
        for {event, time} <- handle_events(events), do: IO.puts "#{time} - #{event}"
        "Let the magic begin!"
    end
    def schedule(nil), do: "Attendee could not be registered."

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

    defp attendees(name) when is_binary(name) do
        %{name: name, events: all_events()}
    end
    defp attendees(_), do: nil

    defp all_events(), do: for e <- 0..3, do: e
end

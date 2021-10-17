defmodule Advanced do
  @moduledoc """
  Recursion is when a function calls itself. This moduel deomonstrates
  recursion  with the head and tail syntax a linked list.
  """

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

  @doc """
  Take a list of tuples with two string elements and concatenate the strings with
  an
  """
  def stringify([]), do: []

  def stringify([{name, time} | tail]) do
    [name <> " @ " <> time | stringify(tail)]
  end
end

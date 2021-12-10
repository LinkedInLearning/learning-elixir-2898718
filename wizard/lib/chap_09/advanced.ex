defmodule Wizard.Advanced do

  @doc """
  Use recursion to display the schedule of events
  """
  def display() do 
    display(schedule(), [])
  end

  def display([event | tail], acc) do
    display(tail, [event | acc])
  end

  def display([], acc) do
    acc
    |> Enum.sort_by(&(&1.day))
    |> display_schedule()
  end

  @doc """
  Use recursion to display the schedule of events.
  """
  def display_schedule([]), do: "Let the Magic Begin!"

  def display_schedule([day | rest]) do
    IO.puts "Day #{to_string(day.day)}" 
    display_events(day.events)

    display_schedule(rest)
  end

  @doc """
  Use recursion to display the time and name of events
  """
  def display_events(event) when is_map(event) do
    Enum.map(event, &display_events/1)
  end

  def display_events({time, [id | next_ids]}) do
    section = Keyword.get(all_events(), String.to_atom(id))
    IO.inspect "#{time} - #{section}"
    display_events({time, next_ids})
  end

  def display_events({_, []}), do: nil
  
  @doc """
  Return the conference schedule as a map.
  In a real application this would likely come from 
  a database or other storage.
  """
  def schedule() do
    [
      %{
        day: 3,
        date: "14",
        month: "10",
        events: %{
          "09:00": ["3", "4"],
          "13:00": ["5", "6"],
          "12:00": ["11"],
          "08:00": ["12"]
        }
      },
      %{
        day: 1,
        date: "12",
        month: "10",
        events: %{
          "11:00": ["3", "0"],
          "09:00": ["1", "2"],
          "13:00": ["3", "4"],
          "12:00": ["11"],
          "08:00": ["12"]
        }
      },
      %{
        day: 2,
        date: "13",
        month: "10",
        events: %{
          "12:00": ["11"],
          "08:00": ["13"],
          "13:00": ["10"],
          "09:00": ["9", "7", "8"]
        }
      }
    ]
  end

  @doc """
  Return the events and their IDs as a keyword list.
  In a real application this would likely come from 
  a database or other storage.
  """
  def all_events() do
    [
      "0": "Networking",
      "1": "Alchemy", "2": "Advanced Alchemy",
      "3": "Wands", "4": "Spells",
      "5": "Elements", "6": "New Elements",
      "7": "Cauldrens", "8": "Intermediate Cauldrens",
      "9": "Advanced Cauldrens",
      "10": "Demonstrations", "11": "Lunch",
      "12": "Keynote by Liza Proctor", 
      "13": "Keynote by Emrys Wyllt"
    ]
  end
end
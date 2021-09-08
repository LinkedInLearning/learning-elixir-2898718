defmodule Iterate do
    @moduledoc """
    This module contains functions for learning about iterating enumerables in Elixir.
    """

    @doc """
    Iterating lists using a reduce
    """
    def reduce() do
        toes = [1, 2, 3]
        reduce_toes = Enum.reduce(toes, 5, fn(t, acc) -> t * acc end)
        IO.inspect(toes, label: "The list of toes")
        IO.inspect(reduce_toes, label: "Reduced to a single accumulator")
        IO.puts "Reducer breakdown"
        Enum.reduce(toes, 5, fn(toe, acc) ->
            IO.inspect(acc, label: "The accumulator is")
            IO.inspect(toe, label: "The element is")
            toe * acc
        end)

        elements = ["Carbon", "Hydrogen", "Ruthenium", "Silicon", "Nitrogen", "Ytterbium"]
        reduced_elements = Enum.reduce(elements, fn e, _acc -> String.downcase(e) end)
        downcased = Enum.reduce(elements, [],  fn(e, acc)->
            [String.downcase(e) | acc]
        end)
        reversed = Enum.reverse(downcased)
        IO.inspect(elements, label: "The list of elements")
        IO.inspect(reduced_elements, label: "Reduced to a single accumulator")
        IO.inspect(downcased, label: "Reduced to an accumulated list")
        IO.inspect(reversed, label: "Reduced to an accumulated list and reversed")

        elements = [
            %{name: "Hydrogen", number: 1, weight: 1},
            %{name: "Carbon", number: 6, weight: 12},
            %{name: "Iridium", number: 77, weight: 192}
        ]
        re = Enum.reduce(elements, [], fn e, acc ->
            neutrons = e.weight - e.number
            [Map.put(e, :neutrons, neutrons) | acc]
        end)
        IO.inspect(elements, label: "The list of elements")
        IO.inspect(re, label: "Reduced to a single accumulator")

        elements = [
            %{name: "Hydrogen", number: 1, weight: 1, group: 1},
            %{name: "Carbon", number: 6, weight: 12, group: 14},
            %{name: "Iridium", number: 77, weight: 192, group: 9}
        ]
        re = Enum.reduce(elements, [], fn
            %{group: 9} = e, acc -> [Map.put(e, :classification, "transition metal") | acc]
            %{group: 14} = e, acc -> [Map.put(e, :classification, "other nonmetal") | acc]
            _, acc -> acc
        end)
        IO.inspect(elements, label: "The list of elements")
        IO.inspect(re, label: "Reduced to new map with classification")

        re = Enum.reduce(elements, [], fn
            %{group: 1} = e, acc -> [Map.put(e, :classification, "alkali metal") | acc]
            %{group: 9} = e, acc -> [Map.put(e, :classification, "transition metal") | acc]
            %{group: 14} = e, acc -> [Map.put(e, :classification, "other nonmetal") | acc]
            %{name: "Hydrogen"} = e, acc -> [Map.put(e, :classification, "other nonmetal") | acc]
            e, acc -> [Map.put(e, :classification, "To be determined") | acc]
        end)
        IO.inspect(re, label: "Reduced to new map with better classification")

        re = Enum.reduce(elements, [], fn
            %{name: "Hydrogen"} = e, acc -> [Map.put(e, :classification, "other nonmetal") | acc]
            %{group: 1} = e, acc -> [Map.put(e, :classification, "alkali metal") | acc]
            %{group: 9} = e, acc -> [Map.put(e, :classification, "transition metal") | acc]
            %{group: 14} = e, acc -> [Map.put(e, :classification, "other nonmetal") | acc]
            e, acc -> [Map.put(e, :classification, "To be determined") | acc]
        end)
        IO.inspect(re, label: "Reduced to new map with best classification")

        {:ok, "Reducers foever!"}
    end
  end

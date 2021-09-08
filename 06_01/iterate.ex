defmodule Iterate do
    @moduledoc """
    This module contains functions for learning about iterating enumerables in Elixir.
    """

    @doc """
    Iterating enumerables
    """
    def enums() do
        toes = [1, 2, 3]
        iterated = for toe <- toes, do: toe * 3
        IO.inspect(iterated, label: "Iterate over #{toes} using list comprehnsion")

        elements = %{"Hydrogen" => "H", "Carbon" => "C"}
        symbols = for {_k, v} <- elements, do: v
        IO.inspect(symbols, label: "Iterate using list comprehnsion to return values")

        for a <- [2, 3], b <- ["cups", "spoonfuls"], c <- ["elderflower", "pomfrey"] do
            IO.inspect "#{a} #{b} of #{c}"
        end

        letters = ["r", "i", "d", "t"]
        IO.puts "Unsorted: #{letters}"
        IO.puts "Now sorted: #{Enum.sort(letters)}"

        digits = [5, 4, 8, 1, 2]
        IO.puts "unsorted: #{digits}"
        IO.puts "Now sorted: #{Enum.sort(digits)}"

        elements = [
            %{name: "Hydrogen", symbol: "H", number: 1},
            %{name: "Carbon", symbol: "C", number: 6},
            %{name: "Helium", symbol: "He", number: 2}
        ]
        sorted_by = Enum.sort_by(elements, fn e -> e.number end)
        [
          %{number: 1, name: "Hydrogen", symbol: "H"},
          %{number: 2, name: "Helium", symbol: "He"},
          %{number: 6, name: "Carbon", symbol: "C"}
        ]
        IO.inspect(sorted_by, label: "The elements sorted by atomic number")

        use_each = Enum.each(["frog", "toad", "newt"], fn(x) -> IO.puts(x) end)
        IO.inspect(use_each, label: "Enum.each")

        elements = [
          %{name: "Hydrogen", symbol: "H", number: 1},
          %{name: "Carbon", symbol: "C", number: 6}
        ]
        use_map = Enum.map(elements, fn(e) ->
                %{Map.get(e, :name) => Map.get(e, :number)}
            end)
        IO.inspect(use_map, label: "Enum.map")

        filtered = Enum.filter(elements, fn(e) -> e.number > 3 end)
        IO.inspect(filtered, label: "Enum.filter")

        IO.puts("Enum.min #{Enum.min([0, 7, -10, 0.3])}")
        IO.puts("Enum.max #{Enum.max([0, 7, -10, 0.3])}")

        all = Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)
        IO.inspect(all, label: "Enum.all?")
        any = Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end)
        IO.inspect(any, label: "Enum.any?")

        chunk_letters = Enum.chunk_every(letters, 2)
        IO.inspect(chunk_letters, label: "Enum.chunk_every")

        elements = [
            %{name: "Hydrogen", number: 1},
            %{name: "Carbon", number: 6},
            %{name: "Helium", number: 2}
        ]
        chunk_remainder = Enum.chunk_by(elements, fn(e) -> rem(e.number, 2) == 0 end)
        IO.inspect(chunk_remainder, label: "Enum.chunk_every map")

        elements = [
            %{name: "Hydrogen", number: 1},
            %{name: "Carbon", number: 6},
            %{name: "Helium", number: 2},
            %{name: "Carbon", number: 6}
        ]
        uniq = Enum.uniq(elements)
        IO.inspect(uniq, label: "Enum.uniq")

        elements = [
            %{name: "Hydrogen", number: 1},
            %{name: "Carbon", number: 6},
            %{name: "Helium", number: 2}
        ]
        take1 = Enum.take(elements, 1)
        IO.inspect(take1, label: "Enum.take 1")
        take1 = Enum.take(elements, 12)
        IO.inspect(take1, label: "Enum.take 12")

        {:ok, "Iteration!"}
    end
  end

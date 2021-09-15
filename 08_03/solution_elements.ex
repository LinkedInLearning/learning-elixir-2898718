defmodule SolutionElements do
    @nonmetals [1, 1, 6, 7, 8, 9, 10, 15, 16, 17, 18, 34, 35, 36, 53, 54, 85, 86]

    def heavy_metal([]), do: :error
    def heavy_metal(elements) when is_list(elements) do
      if has_keys?(elements) do
        metals = Enum.filter(elements, fn element -> metal?(element) end)
        heaviest(metals)
      else
        :error
      end
    end
    def heavy_metal(_), do: :error

    def metal?(%{number: number}) when number in @nonmetals, do: false
    def metal?(%{number: _}), do: true
    def metal?(_), do: :error

    def heaviest(elements) when is_list(elements) do
      sorted = Enum.sort_by(elements, fn m -> m.weight end)
      List.first(sorted)
    end
    def heaviest(_), do: :error

    def has_keys?(elements) when is_list(elements) do
      Enum.all?(elements, fn element -> has_keys?(element) end)
    end
    def has_keys?(element) when is_map(element) do
      Map.has_key?(element, :number) and Map.has_key?(element, :weight)
    end
    def has_keys?(_), do: false
  end

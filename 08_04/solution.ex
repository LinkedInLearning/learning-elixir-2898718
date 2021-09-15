defmodule Solution do
    @moduledoc """
    This module contains solutions to the challenge in this chapter.
    """
    alias SolutionElements, as: Elements

    @doc """
    Test your knowledge of modules and functions. Given a list of elements, the
    elements module function heavy_metal/1 should return the element that is the heaviest
    metal.
    """
    def test() do
        Elements.heavy_metal(nil) == :error and
        Elements.heavy_metal([]) == :error and
        Elements.heavy_metal([%{id: 1, name: "nitrogen"}]) == :error and
        Elements.heavy_metal(elements()) == %{name: "Iridium", number: 77, weight: 192}
    end

    defp elements() do
        [
            %{
                name: "Neon",
                number: 10,
                weight: 20
            },
            %{
                name: "Iridium",
                number: 77,
                weight: 192
            },
            %{
                name: "Carbon",
                number: 6,
                weight: 12
            },
            %{
                name: "Hydrogen",
                number: 1,
                weight: 1
            }
        ]
    end
end

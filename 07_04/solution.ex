defmodule Solution do
    @moduledoc """
    This module contains solutions to the challenge in this chapter.
    """

    @doc """
    The list of element maps. Use it in your functions by calling elements/0
    """
    def elements() do
        [
            %{name: "Hydrogen", number: 1, weight: 1, group: 1},
            %{name: "Carbon", number: 6, weight: 12, group: 14},
            %{name: "Iridium", number: 77, weight: 192, group: 9},
            %{name: "Neon", number: 10, weight: 20, group: 18}
        ]
    end


    @doc """
    Control magic!
    Classify the elements like we did with the reducer in chapter 6 but this time
    use an if/else control structure
    """
    def if_control() do
        Enum.reduce(elements(), [], fn %{name: name, group: group} = e, acc ->
            classification =
                if group == 14 or name == "Hydrogen" do
                    "other nonmetal"
                else
                    if group == 1 do
                        "alkali metal"
                    else
                        if group == 9 do
                            "transition metal"
                        else
                            "To be determined"
                        end
                    end
                end
            [Map.put(e, :classification, classification) | acc]
        end)
    end


    @doc """
    Control magic!
    Classify the elements like we did with the reducer in chapter 6 but this time
    use an case control structure
    """
    def case_control() do
        Enum.reduce(elements(), [], fn e, acc ->
            classification = case %{name: name, group: group} = element do
                e when name == "Hydrogen" -> "other nonmetal"
                e when group === 1 -> "alkali metal"
                e when group === 9 -> "transition metal"
                e when group === 14 -> "other nonmetal"
                e -> "To be determined"
            end
            [Map.put(e, :classification, classification) | acc]
        end)
    end

    @doc """
    Control magic!
    Classify the elements like we did with the reducer in chapter 6 but this time
    use an cond control structure
    """
    def cond_control() do
        Enum.reduce(elements(), [], fn %{name: name, group: group} = e, acc ->
            classification = cond do
                name == "Hydrogen" || group == 14 -> "other nonmetal"
                group == 1 -> "alkali metal"
                group == 9 -> "transition metal"
                true -> "To be determined"
            end
            [Map.put(e, :classification, classification) | acc]
        end)
    end


    @doc """
    Test your control over the magic!
    """
    def test() do
        if_control() == classified_elements() &&
        case_control() == classified_elements() &&
        cond_control() == classified_elements()
    end

    defp classified_elements() do
        [
            %{
                classification: "To be determined",
                group: 18,
                name: "Neon",
                number: 10,
                weight: 20
            },
            %{
                classification: "To be determined",
                group: 18,
                name: "Neon",
                number: 10,
                weight: 20
            },
            %{
                classification: "transition metal",
                group: 9,
                name: "Iridium",
                number: 77,
                weight: 192
            },
            %{
                classification: "other nonmetal",
                group: 14,
                name: "Carbon",
                number: 6,
                weight: 12
            },
            %{
                classification: "other nonmetal",
                group: 1,
                name: "Hydrogen",
                number: 1,
                weight: 1
            }
        ]
    end
  end

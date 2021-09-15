defmodule Challenge do
    @moduledoc """
    This module contains a challenge for you. Use what you have learned about control flow
    in Elixir to solve this challenge.

    Your challenge is to make the test/0 function return return true by using using the control flow
    structure mentioned in the documentation for each function to classify the elements
    like we did using a reducer in chapter 6.

    You should be write your functions, compile this file c("07_06/challenge.ex"), and call test/0
    to receive true as the return value.

    iex> Challenge.test()
    true
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
            acc
        end)
    end

    @doc """
    Control magic!
    Classify the elements like we did with the reducer in chapter 6 but this time
    use an case control structure
    """
    def case_control() do
        Enum.reduce(elements(), [], fn e, acc ->
            acc
        end)
    end


    @doc """
    Control magic!
    Classify the elements like we did with the reducer in chapter 6 but this time
    use an cond control structure
    """
    def cond_control() do
        Enum.reduce(elements(), [], fn %{name: name, group: group} = e, acc ->
            acc
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

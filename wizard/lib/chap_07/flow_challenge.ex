defmodule Wizard.FlowChallenge do
    @moduledoc """
    This module contains a challenge for you. Use what you 
    have learned about control flow.

    Your challenge is to make the test/0 function return 
    true. Instructions for each function can be found in the
    function doc.
    
    You'll be classifying elements using control flow 
    structures and reducers.

    The classifications are:

    1 "alkali metals"
    9 "transition metal"
    14 "other non-metal" 
    18 "nobel gas"

    iex> Wizard.FlowChallenge.test()
    true
    """

    @doc """
    This function has been completed for you. It returns the
    list of element maps to be used in the other functions in
    this module. You access it in other functions by 
    calling elements/0
    """
    def elements() do
      [
        %{name: "Hydrogen", group: 1},
        %{name: "Carbon", group: 14},
        %{name: "Iridium", group: 9},
        %{name: "Neon", group: 18}
      ]
    end

    @doc """
    Classify the elements using the classifications in the 
    module doc and the if/else control structure.
    
    Replace the  body of the reducer's anonymous function 
    with if/else structures to determine the correct 
    classification of each element.

    Add the correct classification to each element map in the
    key :classification.

    Return a list of the maps with the new key.
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
                "Unknown"
              end
            end
          end
        [Map.put(e, :classification, classification) | acc]
      end)
    end

    @doc """
    Classify the elements using the classifications in the 
    module doc and the cond control structure.
    
    Replace the  body of the reducer's anonymous function 
    with a cond structure to determine the correct 
    classification of each element.

    Add the correct classification to each element map in the
    key :classification.

    Return a list of the maps with the new key.
    """
    def cond_control() do
      Enum.reduce(elements(), [], fn %{name: name, group: group} = e, acc ->
        classification = cond do
          name == "Hydrogen" || group == 14 -> "other nonmetal"
          group == 1 -> "alkali metal"
          group == 9 -> "transition metal"
          true -> "Unknown"
        end
        [Map.put(e, :classification, classification) | acc]
      end)
    end

    @doc """
    Classify the elements using the classifications in the 
    module doc and the case control structure. 
    
    Replace the  body of the reducer's anonymous function 
    with a case structure to determine the correct 
    classification of each element.

    Add the correct classification to each element map in the
    key :classification.

    Return a list of the maps with the new key.
    """
    def case_control() do
      Enum.reduce(elements(), [], fn e, acc ->
        classification = case e do
          e when e.name == "Hydrogen" or e.group == 14 -> "other nonmetal"
          e when e.group === 1 -> "alkali metal"
          e when e.group === 9 -> "transition metal"
          _ -> "Unknown"
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
                classification: "Unknown",
                group: 18,
                name: "Neon"
            },
            %{
                classification: "transition metal",
                group: 9,
                name: "Iridium"
            },
            %{
                classification: "other nonmetal",
                group: 14,
                name: "Carbon"
            },
            %{
                classification: "other nonmetal",
                group: 1,
                name: "Hydrogen"
            }
        ]
    end
  end
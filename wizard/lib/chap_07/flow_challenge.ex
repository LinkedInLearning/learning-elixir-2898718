defmodule Wizard.FlowChallenge do
    @moduledoc """
    This module contains a challenge for you. Use what you 
    have learned about control flow.

    Your challenge is to make the test/0 function return 
    true. Instructions for each function can be found in the
    function doc.
    
    You'll be classifying elements like we
    did in chapter 6, but using control flow structures 
    instead of reducers.

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
    module doc and the if/else control structure
    """
    def if_control() do
      []
    end


    @doc """
    Classify the elements using the classifications in the 
    module doc and the cond control structure
    """
    def cond_control() do
      []
    end

    @doc """
    Classify the elements using the classifications in the 
    module doc and the case control structure
    """
    def case_control() do
      []
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
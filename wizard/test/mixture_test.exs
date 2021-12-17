defmodule Wizard.MixtureTest do
  use ExUnit.Case

  test "First mixture will be ready before second mixture" do
    first = Wizard.Mixture.mix_time()
    second = Wizard.Mixture.mix_time()

    assert Timex.before?(first, second)
  end
  
end

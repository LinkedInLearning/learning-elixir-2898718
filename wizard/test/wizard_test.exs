defmodule WizardTest do
  use ExUnit.Case
  doctest Wizard

  test "greets the world" do
    assert Wizard.hello() == :world
  end
end

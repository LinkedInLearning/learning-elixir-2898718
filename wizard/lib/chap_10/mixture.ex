defmodule Wizard.Mixture do

  @doc """
  Return the current DateTime in UTC
  """
  def mix_time() do
    Timex.now()
  end
end
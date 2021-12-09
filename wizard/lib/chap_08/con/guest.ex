defmodule Wizard.Con.Guest do
  @moduledoc """
  Function to handle event guests.
  """
  @default_name "No Name"
  
  @doc """
  Accept a name and return a guest map with the name, a 
  randomly generated ID, list of events, and a specialty.
  """
  def new(nil), do: new(@default_name)
  
  def new(name) do
    id = :rand.uniform(100)
    %{id: id, name: name}
  end

  @doc """
  Add a guest's speciality
  """
  def add_speciality(guest, value) do
    Map.put(guest, :speciality, value)
  end
end
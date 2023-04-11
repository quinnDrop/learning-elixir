defmodule Lasagna do
  # Defines expected time in oven
  def expected_minutes_in_oven() do
    40
  end
  # Calculates remaining oven time in minutes
  def remaining_minutes_in_oven(mins_elapsed_in_oven) do
    expected_minutes_in_oven - mins_elapsed_in_oven
  end
  # Calculates preparation time in minutes
  def preparation_time_in_minutes(lasagna_layers) do
    2 * lasagna_layers
  end
  # Calculates working time in minutes
  def total_time_in_minutes(lasagna_layers, mins_elapsed_in_oven) do
    preparation_time_in_minutes(lasagna_layers) + mins_elapsed_in_oven
  end
  # Notification that lasagna is ready
  def alarm do
    "Ding!"
  end

end

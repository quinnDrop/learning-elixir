defmodule Rules do
  # Define if Pac-Man eats a ghost
  def eat_ghost?(true, true) do
    true
  end
  def eat_ghost?(power_pellet_active, touching_ghost) do
    false
  end
  # Define if Pac-Man scores
  def score?(true, touching_dot) do
    true
  end
  def score?(touching_power_pellet, true) do
    true
  end
  def score?(touching_power_pellet, touching_dot) do
    false
  end
  # Define if Pacman Loses
  def lose?(false, true) do
    true
  end
  def lose?(power_pellet_active, touching_ghost) do
    false
  end
  # Define if Pacman Wins
  def win?(true, true, false) do
    true
  end
  def win?(eaten_all_dots, power_pellet_active, touching_ghost) do
    false
  end

end

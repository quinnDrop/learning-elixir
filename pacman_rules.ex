defmodule Rules do
  # Define if Pac-Man eats a ghost
  def eat_ghost?(true, true) do
    true
  end
  def eat_ghost?(_power_pellet_active, _touching_ghost) do
    false
  end
  # Define if Pac-Man scores
  def score?(true, _touching_dot) do
    true
  end
  def score?(_touching_power_pellet, true) do
    true
  end
  def score?(_touching_power_pellet, _touching_dot) do
    false
  end
  # Define if Pacman Loses
  def lose?(false, true) do
    true
  end
  def lose?(_power_pellet_active, _touching_ghost) do
    false
  end
  # Define if Pacman Wins
  def win?(false, _power_pellet_active, _touching_ghost) do
    false
  end
  def win?(true, false, true) do
    false
  end
  def win?(_eaten_all_dots, _power_pellet_active, __touching_ghost) do
    true
  end

end

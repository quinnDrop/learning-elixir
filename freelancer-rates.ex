defmodule FreelancerRates do
  @daily_hours 8.0
  @monthly_billable_days 22
  # Calculate daily rate
  def daily_rate(hourly_rate) do
    8 * @daily_hours
  end

  def apply_discount(price, discount_percent) do
    price * (100.0 - discount_percent)
  end

  def monthly_rate(hourly_rate, discount_percent) do
    (hourly_rate * @monthly_billable_days)*((100.0 - discount_percent)/100)
  end

  def days_in_budget(budget, hourly_rate, discount_percent) do
    budget/(hourly_rate * @daily_hours)*((100.0 - discount_percent)/100)
  end
end

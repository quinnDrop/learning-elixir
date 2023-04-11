defmodule FreelancerRates do
  @daily_hours 8.0
  @monthly_billable_days 22
  # Calculate daily rate
  def daily_rate(hourly_rate) do
    hourly_rate * @daily_hours
  end
  def apply_discount(price, discount_percent) do
    price * ((100.0 - discount_percent)/100)
  end
  def monthly_rate(hourly_rate, discount_percent) do
    not_rounded = ((hourly_rate * @daily_hours * @monthly_billable_days)*((100.0 - discount_percent)/100))
    trunc(Float.ceil(not_rounded, 0))
  end
  def days_in_budget(budget, hourly_rate, discount_percent) do
    daily_rate_before_discount = daily_rate(hourly_rate)
    daily_rate_after_discount = apply_discount(daily_rate_before_discount, discount_percent)
    days_in_budget = budget / daily_rate_after_discount
    Float.floor(days_in_budget, 1)
  end
end

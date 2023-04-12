defmodule Secrets do
  import Bitwise
  def secret_add(secret) do
    adder = fn param ->
      param + secret
    end
  end

  def secret_subtract(secret) do
    # Please implement the secret_subtract/1 function
    subtracter = fn param ->
      param - secret
    end
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    multiplier = fn param ->
      param * secret
    end
  end

  def secret_divide(secret) do
    # Please implement the secret_divide/1 function
    multiplier = fn param ->
      div(param, secret)
    end
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    ander = fn param ->
      band(param, secret)
    end
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    xorer = fn param ->
      bxor(param, secret)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
    combined = fn param ->
      first = secret_function1.(param)
      second = secret_function2.(first)
    end
  end
end


# This is the concise top community solution
# defmodule Secrets do
#   def secret_add(secret), do: &Kernel.+(&1, secret)
#   def secret_subtract(secret), do: &Kernel.-(&1, secret)
#   def secret_multiply(secret), do: &Kernel.*(&1, secret)
#   def secret_divide(secret), do: &Kernel.div(&1, secret)
#   def secret_and(secret), do: &Bitwise.band(&1, secret)
#   def secret_xor(secret), do: &Bitwise.bxor(&1, secret)
#   def secret_combine(secret_function1, secret_function2) do
#     &(&1 |> then(secret_function1) |> then(secret_function2))
#   end
# end

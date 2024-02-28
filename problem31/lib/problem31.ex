defmodule Problem31 do
  def isPrime(num, 1), do: true
  def isPrime(num, divisor) when rem(num, divisor) === 0, do: false
  def isPrime(num, divisor) when rem(num, divisor) !== 0, do: isPrime(num, divisor - 1)

  def isPrime(num), do: isPrime(num, num - 1)
end

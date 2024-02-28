ExUnit.start()

defmodule Problem32 do
  def gcd(0,num2), do: num2
  def gcd(num1,num2) do
    gcd(rem(num2,num1),num1)
  end
end

defmodule Problem32Test do
  use ExUnit.Case
  test "num1 > num2" do
    assert Problem32.gcd(36,63) == 9
  end

  test "num2 > num1" do
    assert Problem32.gcd(63,36) == 9
  end
end

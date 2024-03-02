ExUnit.start()

defmodule Problem34 do
  def primeFactors(num) when num<=1, do: []
  def primeFactors(num) when rem(num,2)===0, do: [2 | primeFactors(trunc(num/2))]
  def primeFactors(num), do: [num]
end

defmodule Problem34Tests do
  use ExUnit.Case
  test "factors of 1" do
    assert Problem34.primeFactors(1)===[]
  end

  test "factors of 2" do
    assert Problem34.primeFactors(2)===[2]
  end

  test "factors of 3" do
    assert Problem34.primeFactors(3)===[3]
  end

  test "factors of 4" do
    assert Problem34.primeFactors(4)===[2,2]
  end
end

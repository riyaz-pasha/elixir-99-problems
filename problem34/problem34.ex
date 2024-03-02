ExUnit.start()

defmodule Problem34 do
  def primeFactors(num) when num>1, do: [num]
  def primeFactors(_num), do: []
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
end

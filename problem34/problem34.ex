ExUnit.start()

defmodule Problem34 do
  def primeFactors(num,_) when num<=1, do: []
  def primeFactors(num, factor) when rem(num,factor)===0, do: [factor | primeFactors(trunc(num/factor))]
  def primeFactors(num, factor), do: primeFactors(num,factor+1)
  def primeFactors(num), do: primeFactors(num,2)
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

  test "factors of 5,6,7,8" do
    assert Problem34.primeFactors(5)===[5]
    assert Problem34.primeFactors(6)===[2,3]
    assert Problem34.primeFactors(7)===[7]
    assert Problem34.primeFactors(8)===[2,2,2]
  end

  test "factors of 9" do
    assert Problem34.primeFactors(9)===[3,3]
  end

  test "factors of 10,11,12,12,14" do
    assert Problem34.primeFactors(10)===[2,5]
    assert Problem34.primeFactors(11)===[11]
    assert Problem34.primeFactors(12)===[2,2,3]
    assert Problem34.primeFactors(13)===[13]
    assert Problem34.primeFactors(14)===[2,7]
  end

  test "factors of 25" do
    assert Problem34.primeFactors(25)===[5,5]
  end

  test "factors final" do
    assert Problem34.primeFactors(2*2*3*3*3*5*7)===[2,2,3,3,3,5,7]
  end
end

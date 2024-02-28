defmodule Problem31Test do
  use ExUnit.Case
  doctest Problem31

  test "should return true when num is 2" do
    assert Problem31.isPrime(2) == true
  end

  test "should return true when num is 3" do
    assert Problem31.isPrime(3) == true
  end

  test "should return false when num is 4" do
    assert Problem31.isPrime(4) == false
  end
end

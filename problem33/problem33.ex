ExUnit.start()

defmodule Problem33 do
  defp gcd(num1,num2) do
    cond do
      num2==0 -> num1
      true -> gcd(num2, rem(num1,num2))
    end
  end

  def isCoPrime(num1,num2), do: gcd(num1,num2)===1

end

defmodule Problem33Test do
  use ExUnit.Case
  test "not co prime" do
    assert Problem33.isCoPrime(36,63)===:false
  end

  test "co prime" do
    assert Problem33.isCoPrime(35,64)===:true
  end
end
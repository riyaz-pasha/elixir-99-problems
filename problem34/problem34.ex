ExUnit.start()

defmodule Problem34 do
  def primeFactors(_num), do: []
end

defmodule Problem34Tests do
  use ExUnit.Case
  test "factors of 1" do
    assert Problem34.primeFactors(1)===[]
  end
end

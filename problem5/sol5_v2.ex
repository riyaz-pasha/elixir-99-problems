defmodule Problem5 do
  def reverse([]), do: []

  def reverse([head|tail]) do
    reverse(tail) ++ [head]
  end
end

IO.inspect(Problem5.reverse([]))
IO.inspect(Problem5.reverse([1]))
IO.inspect(Problem5.reverse([1,2,3]))

defmodule Problem14 do
  def duplicate([]), do: []
  def duplicate([head|tail]), do: [head,head | duplicate(tail)]
end

IO.inspect(Problem14.duplicate([]))
IO.inspect(Problem14.duplicate([1]))
IO.inspect(Problem14.duplicate([1,2]))
IO.inspect(Problem14.duplicate([1,2,3,4]))

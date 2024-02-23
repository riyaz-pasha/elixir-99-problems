defmodule Problem7 do
  def flatten([]), do: []

  def flatten(input) do
    flatten_internal(input)
  end

  def flatten_internal([head|tail]) do
    head_output= cond do
      head===[] -> []
      is_list(head) -> flatten_internal(head)
      true -> [head]
    end

    tail_output= cond do
      tail===[] -> []
      is_list(tail) -> flatten_internal(tail)
      true -> [tail]
    end

    head_output ++ tail_output
  end
end

IO.inspect(Problem7.flatten([]))
IO.inspect(Problem7.flatten([1]))
IO.inspect(Problem7.flatten([[1]]))
IO.inspect(Problem7.flatten([[1,2]]))
IO.inspect(Problem7.flatten([[1],2]))
IO.inspect(Problem7.flatten([1,[2]]))
IO.inspect(Problem7.flatten([[1,[3,[4]]],[2]]))

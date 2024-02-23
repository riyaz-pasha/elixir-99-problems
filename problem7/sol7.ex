defmodule Problem7 do

  def flatten(input) do
    flatten_internal(input)
  end

  defp flatten_internal([]), do: []

  defp flatten_internal([head|tail]) do
    head_output= cond do
      is_list(head) -> flatten_internal(head)
      true -> [head]
    end
    tail_output= flatten_internal(tail)
    head_output ++ tail_output
  end
end

IO.inspect(Problem7.flatten([]))
IO.inspect(Problem7.flatten([1]))
IO.inspect(Problem7.flatten([[1]]))
IO.inspect(Problem7.flatten([[1,2]]))
IO.inspect(Problem7.flatten([[[11,22]]]))
IO.inspect(Problem7.flatten([[1],2]))
IO.inspect(Problem7.flatten([1,[2]]))
IO.inspect(Problem7.flatten([[1,[3,[4]]],[2]]))
IO.inspect(Problem7.flatten([111,[222,[333,[444],555],666]]))

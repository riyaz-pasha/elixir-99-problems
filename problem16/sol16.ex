defmodule Problem16 do
  def drop_every_nth_element(input,n), do: drop_internal(input,n,1)

  defp drop_internal([],_,_), do: []

  defp drop_internal([_|tail],n,current_position) when n===current_position do
    drop_internal(tail,n,1)
  end

  defp drop_internal([head|tail],n, current_position) do
    [head | drop_internal(tail,n,current_position+1)]
  end
end

IO.inspect(Problem16.drop_every_nth_element([],1))
IO.inspect(Problem16.drop_every_nth_element([1,2],3))
IO.inspect(Problem16.drop_every_nth_element([1,2,3,4],2))
IO.inspect(Problem16.drop_every_nth_element([1,2,3,4],3))
IO.inspect(Problem16.drop_every_nth_element([1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4],4))

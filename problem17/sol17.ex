defmodule Problem17 do
  def split(input,n), do: split_internal(input,n,1)

  defp split_internal([],_,_), do: []

  defp split_internal([head|tail],n,current_position) when n===current_position do
    [[head] | tail]
  end

  defp split_internal([head|tail],n,current_position) do
    [first|second]= split_internal(tail,n,current_position+1)
    [[head|first]|second]
  end
end

IO.inspect(Problem17.split([],1))
IO.inspect(Problem17.split([1],1))
IO.inspect(Problem17.split([1,2],1))
IO.inspect(Problem17.split([1,2,3],2))
IO.inspect(Problem17.split([1,2,3,4,5,6],4))

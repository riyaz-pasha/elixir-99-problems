defmodule Problem19 do
  def rotate(input,n), do: rotate_internal(input,n)

  defp rotate_internal([], _) , do: []
  defp rotate_internal(input, n) when n==0, do: input
  defp rotate_internal([head|tail], n), do: rotate_internal(tail++[head],n-1)
end

IO.inspect(Problem19.rotate([],1))
IO.inspect(Problem19.rotate([1,2,3,4,5],1))
IO.inspect(Problem19.rotate([1,2,3,4,5],2))
IO.inspect(Problem19.rotate([1,2,3,4,5],3))
IO.inspect(Problem19.rotate([1,2,3,4,5],4))
IO.inspect(Problem19.rotate([1,2,3,4,5],5))

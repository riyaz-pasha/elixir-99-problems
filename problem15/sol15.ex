defmodule Problem15 do
  def replicate([],_), do: []
  def replicate([head|tail], replica_count), do: repeat(head,replica_count) ++ replicate(tail,replica_count)

  defp repeat(_, 0), do: []
  defp repeat(element, count), do: [element | repeat(element,count-1)]
end

IO.inspect(Problem15.replicate([],1))
IO.inspect(Problem15.replicate([1],1))
IO.inspect(Problem15.replicate([1],5))
IO.inspect(Problem15.replicate([1,2,3,4,5],3))

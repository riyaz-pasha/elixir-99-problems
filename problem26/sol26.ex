defmodule Problem26 do
  def combinations(input,length), do: combinations_internal(input,length)


  defp combinations_internal(_, 0, combination), do: [Enum.reverse(combination)]
  defp combinations_internal([],_,_) ,do: []

  defp combinations_internal(input, length, _) when length(input)<length, do: []

  defp combinations_internal([head|tail], length, combination) do
    combinations_internal(tail,length-1,[head | combination])
    ++ combinations_internal(tail,length,combination)
  end

  defp combinations_internal([head|tail], length) do
    combinations_internal(tail,length-1,[head]) ++ combinations_internal(tail,length,[])
  end

end

IO.inspect(Problem26.combinations([1,2,3,4,5],1))
IO.inspect(Problem26.combinations([1,2],2))
IO.inspect(Problem26.combinations([1,2,3],2))
IO.inspect(Problem26.combinations([1,2,3,4],2))
IO.inspect(Problem26.combinations([1,2,3,4],3))

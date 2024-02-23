defmodule Problem9 do
  def pack(input) do
    pack_internal input, []
  end

  defp pack_internal([], acc), do: Enum.reverse(acc)

  defp pack_internal([head|tail], acc) do
    case acc do
      [[^head|_]|_]-> pack_internal(tail,  [([head | hd(acc)]) | tl(acc)])
      _ -> pack_internal(tail, [[head] | acc])
    end
  end
end

IO.inspect(Problem9.pack([]))
IO.inspect(Problem9.pack([1]))
IO.inspect(Problem9.pack([1,1]))
IO.inspect(Problem9.pack([1,1,1]))
IO.inspect(Problem9.pack([1,1,1,1]))
IO.inspect(Problem9.pack([1,1,1,1,1]))
IO.inspect(Problem9.pack([1,1,2]))
IO.inspect(Problem9.pack([1,2,2]))
IO.inspect(Problem9.pack([1,1,2,2]))
IO.inspect(Problem9.pack([1,1,2,2,3,4,4,4,3,3,1,1,2]))

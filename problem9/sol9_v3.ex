defmodule Problem9 do
  def pack(input) do
    pack_internal input, []
  end

  defp pack_internal([], acc), do: Enum.reverse(acc)
  defp pack_internal([head | tail], []), do: pack_internal(tail, [[head]])

  defp pack_internal([head | tail], [[head|_]=current_group|rest]) do
    pack_internal(tail, [[head | current_group] | rest])
  end

  defp pack_internal([head | tail], acc), do: pack_internal(tail, [[head] | acc])
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

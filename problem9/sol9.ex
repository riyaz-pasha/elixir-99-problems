defmodule Problem9 do
  def pack(input) do
    pack_internal input
  end

  defp pack_internal([]), do: []

  defp pack_internal([head|tail]) do
    output= pack_internal tail

    case output do
      [[^head|_]|_]->  [([head | hd(output)]) | tl(output)]
      _ -> [[head] | output]
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

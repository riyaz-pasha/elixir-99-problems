defmodule Problem12 do
  def decode(input), do: decode_internal input

  defp repeat(ele,1), do: [ele]
  defp repeat(ele,count), do: [ele | repeat(ele,count-1)]

  defp decode_internal([]), do: []
  defp decode_internal([head|tail]) do
    head_output= case head do
      [count, element]-> repeat(element,count)
      _ -> [head]
    end
    head_output ++ decode_internal(tail)
  end
end

IO.inspect(Problem12.decode([]))
IO.inspect(Problem12.decode(["a"]))
IO.inspect(Problem12.decode([[2,"a"]]))
IO.inspect(Problem12.decode([[2,"a"],"b"]))
IO.inspect(Problem12.decode([[2,"a"],[3,"b"]]))

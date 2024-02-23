defmodule Problem10 do
  def encode(input), do: encode_internal(input, [])

  defp encode_internal([],acc), do: Enum.reverse(acc)

  defp encode_internal([head | tail], []), do: encode_internal(tail, [[1, head]])

  defp encode_internal([head | tail], [[count, head]|rest]) do
    encode_internal(tail, [[count+1,head ] | rest])
  end

  defp encode_internal([head | tail], acc), do: encode_internal(tail, [[1, head] | acc])

end

IO.inspect(Problem10.encode([]))
IO.inspect(Problem10.encode(["a"]))
IO.inspect(Problem10.encode(["a","a","b"]))
IO.inspect(Problem10.encode(["a","b","b"]))
IO.inspect(Problem10.encode(["a","a","b","b","c","c","c","a","a","a","b","d"]))

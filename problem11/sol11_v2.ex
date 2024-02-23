defmodule Problem11 do
  def encode_modified(input), do: encode_internal(input,[])

  defp encode_internal([],acc), do: Enum.reverse(acc)

  defp encode_internal([head | tail], [head|rest]) do
    encode_internal(tail, [[2,head ] | rest])
  end

  defp encode_internal([head | tail], [[count, head]|rest]) do
    encode_internal(tail, [[count+1,head ] | rest])
  end

  defp encode_internal([head | tail], acc), do: encode_internal(tail, [head | acc])

end

IO.inspect(Problem11.encode_modified([]))
IO.inspect(Problem11.encode_modified(["a"]))
IO.inspect(Problem11.encode_modified(["a","a"]))
IO.inspect(Problem11.encode_modified(["a","a","a"]))
IO.inspect(Problem11.encode_modified(["a","a","b"]))
IO.inspect(Problem11.encode_modified(["a","b","b"]))
IO.inspect(Problem11.encode_modified(["a","b","b","b"]))
IO.inspect(Problem11.encode_modified(["a","a","e","b","b","c","c","c","a","a","a","b","d"]))

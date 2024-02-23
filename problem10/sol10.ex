defmodule Problem10 do
  def encode(input), do: encode_internal input

  defp encode_internal([]), do: []
  defp encode_internal([head]), do: [[1,head]]

  defp encode_internal([head|tail]) do
    [[count,element]| rest]= output = encode_internal tail
    cond do
      element===head->  [([count+1 , element]) | rest]
      true -> [([1, head]) | output]
    end
  end

end

IO.inspect(Problem10.encode([]))
IO.inspect(Problem10.encode(["a"]))
IO.inspect(Problem10.encode(["a","a","b"]))
IO.inspect(Problem10.encode(["a","b","b"]))
IO.inspect(Problem10.encode(["a","a","b","b","c","c","c","a","a","a","b","d"]))

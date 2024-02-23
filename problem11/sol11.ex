defmodule Problem11 do
  def encode_modified(input), do: encode_internal input

  defp encode_internal([]), do: []
  defp encode_internal([head]), do: [head]

  defp encode_internal([head|tail]) do
    output = encode_internal tail
    case output do
      [^head| rest] ->  [([2 , head]) | rest]
      [[count, ^head]| rest] ->  [([count+1 , head]) | rest]
      _ -> [head | output]
    end
  end

end

IO.inspect(Problem11.encode_modified([]))
IO.inspect(Problem11.encode_modified(["a"]))
IO.inspect(Problem11.encode_modified(["a","a"]))
IO.inspect(Problem11.encode_modified(["a","a","b"]))
IO.inspect(Problem11.encode_modified(["a","b","b"]))
IO.inspect(Problem11.encode_modified(["a","a","e","b","b","c","c","c","a","a","a","b","d"]))

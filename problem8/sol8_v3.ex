defmodule Problem8 do
  def compress(input) when is_list(input) do
    compress_internal(input)
  end

  def compress(input) do
    Enum.join(compress_internal(String.graphemes(input)),"")
  end

  defp compress_internal([]), do: []

  defp compress_internal([head]), do: [head]

  defp compress_internal([head|tail]) do
    output= compress_internal tail
    case output do
      [^head|_] -> output
      _ -> [head | output]
    end
  end

end

IO.inspect(Problem8.compress([]))
IO.inspect(Problem8.compress([1]))
IO.inspect(Problem8.compress([1,1]))
IO.inspect(Problem8.compress([1,2]))
IO.inspect(Problem8.compress([11,11,22]))
IO.inspect(Problem8.compress([111,222,222]))
IO.inspect(Problem8.compress([111,222,222,111,111,111,222,222,222,333,333,444,444,333]))
IO.inspect(Problem8.compress("aaabbbbcccaabbddd"))

defmodule Problem8 do
  def compress(input) when is_list(input) do
    compress_internal(input,[])
  end

  def compress(input) do
    Enum.join(compress(String.graphemes(input)),"")
  end

  defp compress_internal([],acc), do: Enum.reverse(acc)

  defp compress_internal([head | tail], acc) do
    case acc do
      [^head | _] -> compress_internal(tail, acc) # Skip adding if head matches the first element of acc
      _ -> compress_internal(tail, [head | acc])  # Add head to acc otherwise
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

defmodule Problem22 do
  def range(start, stop), do: range_internal(start,stop)

  defp range_internal(start, stop) when start>stop, do: [start | range_internal(start-1,stop)]
  defp range_internal(start, stop) when start===stop do
    [stop]
  end

  defp range_internal(start, stop) do
    [start | range_internal(start+1,stop)]
  end
end

IO.inspect(Problem22.range(1,3))
IO.inspect(Problem22.range(1,9))
IO.inspect(Problem22.range(5,15))
IO.inspect(Problem22.range(15,1))

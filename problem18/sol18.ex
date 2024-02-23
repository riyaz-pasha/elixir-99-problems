defmodule Problem18 do
  def slice(input, start_position, end_position), do: slice_internal(input,start_position,end_position,1)

  defp slice_internal([],_,_,_), do: []
  defp slice_internal([head|rest], start_position, end_position, current_position) when current_position>=start_position and current_position<=end_position do
    [head|slice_internal(rest,start_position,end_position,current_position+1)]
  end

  defp slice_internal([_|rest], start_position, end_position, current_position) do
    slice_internal(rest,start_position,end_position,current_position+1)
  end
end

IO.inspect(Problem18.slice([1,2,3,4,5,6],3,5))

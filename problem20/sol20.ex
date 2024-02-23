defmodule Problem20 do
  def remove_at(input,position), do: remove_at_internal(input,position,1)

  def remove_at_internal([],_,_), do: []
  def remove_at_internal([_|tail],position,current_position) when position===current_position do
    remove_at_internal(tail,position,current_position+1)
  end
  def remove_at_internal([head|tail],position,current_position) do
    [head | remove_at_internal(tail,position, current_position+1)]
  end
end

IO.inspect(Problem20.remove_at([],1))
IO.inspect(Problem20.remove_at([1],1))
IO.inspect(Problem20.remove_at([1,2],1))
IO.inspect(Problem20.remove_at([1,2],2))
IO.inspect(Problem20.remove_at([1,2,3,4,5],4))

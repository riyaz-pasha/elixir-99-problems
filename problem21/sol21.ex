defmodule Problem21 do
  def insert_at(new_element,input,position), do: insert_at_internal(new_element,input,position,1)

  defp insert_at_internal(_,[],_,_), do: []

  defp insert_at_internal(new_element,[head|tail],position,current_position) when position===current_position do
    [new_element,head|tail]
  end

  defp insert_at_internal(new_element,[head|tail],position,current_position) do
    [head|insert_at_internal(new_element,tail,position,current_position+1)]
  end
end

IO.inspect(Problem21.insert_at(199,[1],1))
IO.inspect(Problem21.insert_at(299,[1,2],2))

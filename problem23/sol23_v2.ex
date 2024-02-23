defmodule Problem23 do
  def random_select(input,count) do
    random_select_internal(input,count,length(input))
  end

  defp random_select_internal(input,count,input_length) do
    cond do
      count===0 -> []
      true ->
        random_position= :rand.uniform(input_length-1)
        updated_input=remove_at(input,random_position, 0)
        [Enum.at(input,random_position) | random_select_internal(updated_input,count-1,input_length-1)]
    end
  end

  def remove_at(input,position,current_position\\0) do
    cond do
      input===[] -> []
      position===current_position -> remove_at(tl(input),position,current_position+1)
      true -> [hd(input) | remove_at(tl(input),position, current_position+1)]
    end
  end
end

IO.inspect(Problem23.random_select([1,2,3,4,5,6],3))

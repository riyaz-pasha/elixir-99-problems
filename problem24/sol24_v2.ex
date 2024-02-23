defmodule Problem24 do
  def random_select_in_range(stop, size_of_list) do
    list=range(1,stop)
    random_select(list,size_of_list,stop)
  end

  defp range(start, stop) do
    cond do
      start === stop -> [stop]
      true -> [start | range(start + 1, stop)]
    end
  end

  defp random_select(input,count,input_length) do
    cond do
      count===0 -> []
      true ->
        random_position= :rand.uniform(input_length-1)
        updated_input=remove_at(input,random_position, 0)
        [Enum.at(input,random_position) | random_select(updated_input,count-1,input_length-1)]
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

IO.inspect(Problem24.random_select_in_range(100,5))

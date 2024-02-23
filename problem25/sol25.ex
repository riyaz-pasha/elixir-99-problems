defmodule Problem25 do
  def random_permutation(input) do
    len=length(input)
    random_select(input,len,len)
  end

  defp random_select(input,count,input_length) do
    cond do
      count<=1 -> input
      true ->
        random_position= :rand.uniform(input_length-1)
        updated_input=remove_at(input,random_position)
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

IO.inspect(Problem25.random_permutation([1,2,3,4,5]))
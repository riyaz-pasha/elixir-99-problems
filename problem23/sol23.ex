defmodule Problem23 do
  def random_select(input,count) do
    random_select_internal(input,count,length(input))
  end

  defp random_select_internal(_,count,_) when count===0 do
    []
  end

  defp random_select_internal(input,count,input_length) do
    random_position= :rand.uniform(input_length-1)
    [Enum.at(input,random_position) | random_select_internal(input,count-1,input_length)]
  end
end

IO.inspect(Problem23.random_select([1,2,3,4,5,6],3))

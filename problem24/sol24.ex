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
      true -> [Enum.at(input,:rand.uniform(input_length-1)) | random_select(input,count-1,input_length)]
    end

  end

end

IO.inspect(Problem24.random_select_in_range(100,5))

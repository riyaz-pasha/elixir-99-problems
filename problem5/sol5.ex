defmodule Problem5 do

  defp reverse_internal([],output), do: output

  defp reverse_internal([head | tail], output) do
    reverse_internal(tail,[head | output])
  end

  def reverse(input) when is_list(input), do: reverse_internal(input,[])
  def reverse(input) , do: Enum.join(reverse_internal(String.graphemes(input),[]),"")
end

IO.inspect(Problem5.reverse([]))
IO.inspect(Problem5.reverse([1]))
IO.inspect(Problem5.reverse([1,2,3]))
IO.inspect(Problem5.reverse([1,2,3,4,5]))
IO.inspect(Problem5.reverse("riyaz"))

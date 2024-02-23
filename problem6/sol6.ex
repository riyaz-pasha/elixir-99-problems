defmodule Problem6 do

  defp reverse_internal([],output), do: output

  defp reverse_internal([head | tail], output) do
    reverse_internal(tail,[head | output])
  end

  def reverse(input) when is_list(input), do: reverse_internal(input,[])
  def reverse(input) , do: Enum.join(reverse_internal(String.graphemes(input),[]),"")

  def is_palindrome?(input) do
    input===reverse(input)
  end
end

IO.inspect(Problem6.is_palindrome?([]))
IO.inspect(Problem6.is_palindrome?([1]))
IO.inspect(Problem6.is_palindrome?([1,2,1]))
IO.inspect(Problem6.is_palindrome?([1,2,3]))
IO.inspect(Problem6.is_palindrome?([1,2,3,2,1]))
IO.inspect(Problem6.is_palindrome?("abcba"))
IO.inspect(Problem6.is_palindrome?("abcab"))

defmodule Problem4 do
  def length_of([]), do: 0

  def length_of(input) when is_list(input) do
    1+length_of(tl(input))
  end

  def length_of(input) do
    length_of(String.graphemes(input))
  end
end

IO.puts(Problem4.length_of([]))
IO.puts(Problem4.length_of([1]))
IO.puts(Problem4.length_of([1,2]))
IO.puts(Problem4.length_of([1,2,3]))
IO.puts(Problem4.length_of("Apple"))

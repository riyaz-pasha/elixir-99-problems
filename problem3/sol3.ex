defmodule Problem3 do

  def element_at([],_), do: nil
  def element_at(_,position) when position<1, do: nil

  def element_at([head | _], 1) do
    head
  end

  def element_at(input, position) when is_list(input) do
    element_at(tl(input),position-1)
  end

  def element_at(input, position) do
    element_at(String.graphemes(input),position)
  end
end

IO.puts(Problem3.element_at([],0))
IO.puts(Problem3.element_at([1],0))
IO.puts(Problem3.element_at([1],-1))
IO.puts(Problem3.element_at([1],2))
IO.puts(Problem3.element_at([1],1))
IO.puts(Problem3.element_at([1,2],2))
IO.puts(Problem3.element_at([1,2,3],3))
IO.puts(Problem3.element_at("abc",2))
IO.puts(Problem3.element_at("bcde",4))

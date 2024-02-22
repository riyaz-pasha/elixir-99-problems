defmodule Problem2 do
  def last_but_one([]) do
    nil
  end
  def last_but_one([second_to_last | [_last]]) do
    second_to_last
  end
  def last_but_one([_ | tail]) do
    last_but_one(tail)
  end
end

IO.puts(Problem2.last_but_one([100]))
IO.puts(Problem2.last_but_one([100,200]))
IO.puts(Problem2.last_but_one([100,200,300]))
IO.puts(Problem2.last_but_one([100,200,300,400]))

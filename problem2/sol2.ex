defmodule Problem2 do
  def last_but_one([]), do: nil
  def last_but_one([_last]), do: nil
  def last_but_one([second_to_last, _last]), do: second_to_last
  def last_but_one([_ | last]) do
    last_but_one(last)
  end
end

IO.puts(Problem2.last_but_one([]))
IO.puts(Problem2.last_but_one([100]))
IO.puts(Problem2.last_but_one([99,100]))
IO.puts(Problem2.last_but_one([97,98,99]))
IO.puts(Problem2.last_but_one(["a"]))
IO.puts(Problem2.last_but_one(["a","b"]))
IO.puts(Problem2.last_but_one(["a","b","c"]))

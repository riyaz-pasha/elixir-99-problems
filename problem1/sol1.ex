defmodule Problem1 do

  def last(), do: nil #  we can throw error for this
  def last([]), do: nil

  def last([head]), do: head

  def last([_ | tail]) do
    last(tail)
  end

end

IO.puts(Problem1.last([]))
IO.puts(Problem1.last([1]))
IO.puts(Problem1.last([1,2]))
IO.puts(Problem1.last([1,2,3]))
IO.puts(Problem1.last(["a"]))
IO.puts(Problem1.last(["a","b"]))
IO.puts(Problem1.last([:abc]))
IO.puts(Problem1.last([:abc, :def]))
IO.puts(Problem1.last())


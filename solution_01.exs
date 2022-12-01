defmodule Solution do
  @input File.read!("input_01.txt") |> String.trim()

  def input do
    @input
    |> String.split("\n\n")
    |> Enum.map(fn e -> String.split(e, "\n") |> Enum.map(&String.to_integer/1) |> Enum.sum end)
  end

  def solve_01 do
    input() |> Enum.max()
  end

  def solve_02 do
    input()
    |> Enum.sort()
    |> Enum.reverse()
    |> Enum.take(3)
    |> Enum.sum()
  end
end

IO.puts "First part: #{Solution.solve_01()}"
IO.puts "Second part: #{Solution.solve_02()}"

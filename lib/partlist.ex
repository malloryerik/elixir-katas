defmodule Partlist do
  def part_list(a) do
    for i <- 1..(length(a) - 1) do
      {h, t} = Enum.split(a, i)
      [Enum.join(h, " "), Enum.join(t, " ")]
    end
  end
end

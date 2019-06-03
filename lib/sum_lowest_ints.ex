

defmodule SmallSummer do
  # takes a list of ints, returns an int, the sum of the two smallest numbers.
	def sum_two_smallest_numbers(numbers) do
    numbers
    |> Enum.sort()
    |> Enum.take(2)
    |> Enum.sum()
  end
end

defmodule Printererror do
  def printer_error(s) do
    num = s
    |> to_charlist()
    |> Enum.reduce(0, fn(n, acc) -> check_char(n) + acc end)
    "#{num}/#{String.length(s)}"
  end

  def check_char(c) when c in ?n..?z, do: 1
  def check_char(c) when c in ?a..?m, do: 0
end

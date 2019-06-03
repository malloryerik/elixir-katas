defmodule Solution do
  def isValidCoordinates(coordinates) do
    if Regex.match?(~r{[^a-zA-Z]}, coordinates) do
      [lat, long] = String.split(coordinates, ", ", parts: 2)
      [real_lat?(lat), real_long?(long)] == [true, true]
    else
      false
    end
  end

  def real_lat?(str) do
    case Float.parse(str) do
      {f, ""} -> abs(f) <= 90.0
      :error -> false
      {_, _} -> false
    end
  end

  def real_long?(str) do
    case Float.parse(str) do
      {f, ""} -> abs(f) <= 180.0
      :error -> false
      {_, _} -> false
    end
  end
end

defmodule CodewarzTest do
  use ExUnit.Case
  doctest Codewarz

  test "greets the world" do
    assert Codewarz.hello() == :world
  end
end

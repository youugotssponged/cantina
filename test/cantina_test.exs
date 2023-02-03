defmodule CantinaTest do
  use ExUnit.Case
  doctest Cantina

  test "greets the world" do
    assert Cantina.hello() == :world
  end
end

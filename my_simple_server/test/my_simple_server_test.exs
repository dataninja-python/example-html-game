defmodule MySimpleServerTest do
  use ExUnit.Case
  doctest MySimpleServer

  test "greets the world" do
    assert MySimpleServer.hello() == :world
  end
end

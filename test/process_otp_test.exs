defmodule ProcessOtpTest do
  use ExUnit.Case
  doctest ProcessOtp

  test "greets the world" do
    assert ProcessOtp.hello() == :world
  end
end

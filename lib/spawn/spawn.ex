defmodule ProcessOtp.Spawn do
  def greet do
    receive do
      {sender, msg} ->
        send(sender, {:ok, "Hello, #{msg}"})
        greet()
    end
  end
end

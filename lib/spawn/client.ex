defmodule ProcessOtp.Client do
  def message_to_send(message) do
    pid = spawn(ProcessOtp.Spawn, :greet, [])
    send(pid, {self(), message})

    receive do
      {:ok, message} -> IO.puts(message)
    end

    send(pid, {self(), "Second message passed"})

    receive do
      {:ok, message} -> IO.puts(message)
    end
  end
end

defmodule ProcessOtp.Spawn_Link do
  import :timer, only: [sleep: 1]

  def sad_function do
    sleep(500)
    exit(:boom)
  end

  def run do
    spawn_link(ProcessOtp.Spawn_Link, :sad_function, [])

    receive do
      msg -> IO.puts("Message received: #{inspect(msg)}")
    after
      1000 ->
        IO.puts("Nothing happened as far as I am concerned")
    end
  end
end

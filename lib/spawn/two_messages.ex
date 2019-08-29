defmodule ProcessOtp.Two_Msg do
  def msg_one do
    receive do
      {:msg1, value} -> IO.puts("the values sended is #{value}")
    end
  end

  def msg_two do
    receive do
      {:msg2, value} -> IO.puts("the second value sended is #{value}")
    end
  end

  def msg_three do
    receive do
      {sender, value} -> send(sender, {:ok, "THIS IS THE THREE MSG :::: #{value}"})
    end
  end
end

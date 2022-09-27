defmodule PingPong.Pong do
  def start do
    receive do
      :finished ->
        IO.puts("Pong finished")
      {:ping, ping_pid} ->
        IO.puts("Pong received a PING")
        send(ping_pid, :pong)
        start()
    end
  end
end

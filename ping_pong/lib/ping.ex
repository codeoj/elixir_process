defmodule PingPong.Ping do
  def start(0, pong_pid) do
    send(pong_pid, :finished)
    IO.puts("Ping finished")
  end
  def start(number, pong_pid) do
    send(pong_pid, {:ping, self()})
    receive do
      :pong ->
        IO.puts("Ping received a PONG")
    end
    start(number - 1, pong_pid)
  end
end

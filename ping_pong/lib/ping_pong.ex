defmodule PingPong do
  def run do
    pong_pid = spawn(PingPong.Pong, :start, [])
    spawn(PingPong.Ping, :start, [3, pong_pid])
  end
end

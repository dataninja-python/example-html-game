defmodule MySimpleServer do
  @moduledoc """
  Documentation for `MySimpleServer`.
  """
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Hello, world!")
  end

  match _ do
    send_resp(conn, 404, "Not found")
  end

  @doc """
  Hello world.

  ## Examples

      iex> MySimpleServer.hello()
      :world

  """
  def hello do
    :world
  end

  def start do
    Plug.Cowboy.http(MySimpleServer, [], port: 4001)
  end
end

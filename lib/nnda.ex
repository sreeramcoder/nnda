defmodule Nnda do
  @moduledoc """
  Documentation for `Nnda`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Nnda.hello()
      :world

  """
  def hello do
    :world
  end

  def start(:normal, _args) do
    IO.puts "Hello, world"

    children = []
    opts = [strategy: :one_for_one, name: Nnda.Supervisor]

    {:ok, pid} = Supervisor.start_link(children, opts)

    {:ok, pid}
  end
  
end



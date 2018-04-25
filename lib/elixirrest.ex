defmodule Elixirrest do
  use Maru.Router

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Elixirrest.Agent, [])
    ]

    opts = [strategy: :one_for_one, name: Elixirrest.Supervisor]
    Supervisor.start_link(children, opts)
  end


  @moduledoc """
  Documentation for Elixirrest.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Elixirrest.hello
      :world

  """
  def hello do
    :world
  end

end

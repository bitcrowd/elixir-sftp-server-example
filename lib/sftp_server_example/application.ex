defmodule SFTPServerExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    SFTPServerExample.start()

    children = [
      # Starts a worker by calling: SFTPServerExample.Worker.start_link(arg)
      # {SFTPServerExample.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SFTPServerExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

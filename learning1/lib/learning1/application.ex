defmodule Learning1.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Learning1Web.Telemetry,
      # Start the Ecto repository
      Learning1.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Learning1.PubSub},
      # Start Finch
      {Finch, name: Learning1.Finch},
      # Start the Endpoint (http/https)
      Learning1Web.Endpoint
      # Start a worker by calling: Learning1.Worker.start_link(arg)
      # {Learning1.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Learning1.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Learning1Web.Endpoint.config_change(changed, removed)
    :ok
  end
end

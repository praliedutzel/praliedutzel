defmodule Praliedutzel.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      PraliedutzelWeb.Telemetry,
      Praliedutzel.Repo,
      {DNSCluster, query: Application.get_env(:praliedutzel, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Praliedutzel.PubSub},
      # Start a worker by calling: Praliedutzel.Worker.start_link(arg)
      # {Praliedutzel.Worker, arg},
      # Start to serve requests, typically the last entry
      PraliedutzelWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Praliedutzel.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PraliedutzelWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

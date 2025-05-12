defmodule LobExams.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LobExamsWeb.Telemetry,
      LobExams.Repo,
      {DNSCluster, query: Application.get_env(:lob_exams, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: LobExams.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: LobExams.Finch},
      # Start a worker by calling: LobExams.Worker.start_link(arg)
      # {LobExams.Worker, arg},
      # Start to serve requests, typically the last entry
      LobExamsWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LobExams.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    LobExamsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

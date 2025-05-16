defmodule LobExamsWeb.Live.AdminDashboard do
  use LobExamsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
    socket
    |> assign(page_title: "Dashboard")
    }
  end
end

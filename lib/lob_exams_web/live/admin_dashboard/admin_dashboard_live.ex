defmodule LobExamsWeb.AdminDashboardLive do
  use LobExamsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
    socket
    |> assign(page_title: "Dashboard")
    |> assign(dropdown_open: false)
    }
  end

  def handle_event("toggle_settings_dropdown", _params, socket) do
  {:noreply, assign(socket, :dropdown_open, !socket.assigns.dropdown_open)}
  end
end

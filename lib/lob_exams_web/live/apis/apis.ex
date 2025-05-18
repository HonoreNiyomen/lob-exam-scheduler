defmodule LobExamsWeb.Live.AdminAPIs do
  use LobExamsWeb, :live_view
  # TODO: Create an apioverview page for admin user

  def mount(_params, _session, socket) do

    {:ok,
    socket
    |> assign(page_title: "System APIs")
    }
  end

  def render(assigns) do
    ~H"""
    """
  end
end
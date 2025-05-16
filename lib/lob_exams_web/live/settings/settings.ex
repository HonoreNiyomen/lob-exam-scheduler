defmodule LobExamsWeb.Live.Settings do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Settings")}
  end
end

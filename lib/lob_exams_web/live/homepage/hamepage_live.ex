defmodule LobExamsWeb.HomepageLive do
  use LobExamsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Homepage")}
  end

  def handle_event("example_event", _params, socket) do
    {:noreply, socket}
  end
end

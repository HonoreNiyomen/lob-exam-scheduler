defmodule LobExamsWeb.Live.Developers do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket
    |> assign(page_title: "Developers")}
  end
end

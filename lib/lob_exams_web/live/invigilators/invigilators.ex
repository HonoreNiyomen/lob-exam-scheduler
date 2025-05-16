defmodule LobExamsWeb.Live.Invigilators do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket
    |> assign(page_title: "Invigilators")
    |> assign(invigilators: %{})}
  end
end

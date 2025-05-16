defmodule LobExamsWeb.HomepageLive do
  use LobExamsWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Homepage")}
  end
end

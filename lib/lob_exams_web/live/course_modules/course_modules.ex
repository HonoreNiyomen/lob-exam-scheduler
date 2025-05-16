defmodule LobExamsWeb.Live.CourseModules do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket
    |> assign(page_title: "Course 2Modules")}
  end
end

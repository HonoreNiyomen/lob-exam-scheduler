defmodule LobExamsWeb.Live.Exams do
  use LobExamsWeb, :live_view

  alias LobExamsWeb.UpcomingExams, as: UE

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Upcoming Exams")}
  end

  def render(assigns) do
    case assigns[:current_user].role do
      "admin" ->
        ~H"""
        <%= UE.admin_upcoming_exams(assigns) %>
        """
      "student" ->
        ~H"""
        {UE.upcoming_exams(assigns)}
        """
      "lecturer" ->
        ~H"""
        {UE.lecturer_upcoming_exams(assigns)}
        """
      "univirsity" ->
        ~H"""
        <%= UE.university_upcoming_exams(assigns) %>
        """
      _ ->
        ~H"""
        <div class="flex flex-col items-center justify-center h-screen">
          <h1 class="text-2xl font-bold">Unauthorized</h1>
          <p class="text-gray-500">You do not have permission to access this page.</p>
        </div>
        """
    end
  end
end

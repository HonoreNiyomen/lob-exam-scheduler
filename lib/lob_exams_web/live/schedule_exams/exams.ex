defmodule LobExamsWeb.Live.ScheduleExams do
  use LobExamsWeb, :live_view

  alias LobExamsWeb.Live.LecturerScheduleExams, as: LSE
  alias LobExamsWeb.Live.InstitutionScheduleExams, as: ISE
  alias LobExamsWeb.Live.AdminScheduleExams, as: ASE

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Exam Schedule")}
  end

  @impl true
  def render(assigns) do
    case assigns[:current_user].role do
      "admin" ->
        ~H"""
        {ASE.admin_exams(assigns)}
        """
      "lecturer" ->
        ~H"""
        {LSE.lecturer_exams(assigns)}
        """
      "university" ->
        ~H"""
        {ISE.institution_exams(assigns)}
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

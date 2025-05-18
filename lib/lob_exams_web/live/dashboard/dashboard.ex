defmodule LobExamsWeb.Live.Dashboard do
  use LobExamsWeb, :live_view

  import Ecto.Query, warn: false
  alias LobExams.Repo, as: R
  alias LobExams.Accounts.User, as: US
  alias LobExams.UsersCourses, as: UC
  alias LobExams.Exam, as: EX
  alias LobExamsWeb.Live.AdminDashboard, as: AD
  alias LobExamsWeb.Live.StudentDashboard, as: SD
  alias LobExamsWeb.Live.LecturerDashboard, as: LD
  alias LobExamsWeb.Live.InstitutionDashboard, as: UD

  def mount(_params, _session, socket) do

    {:ok,
    socket
    |> assign(page_title: "Dashboard")
    }
  end

  def render(assigns) do
    case assigns[:current_user].role do
      "admin" ->
      ~H"""
      <%= AD.admin_dashboard(assigns) %>
      """
      "student" ->
        ~H"""
        <%= SD.student_dashboard(assigns, user_info(assigns)) %>
        """
      "lecturer" ->
        ~H"""
        <%= LD.lecturer_dashboard(assigns, user_info(assigns)) %>
        """
      "university" ->
        ~H"""
        <%= UD.institution_dashboard(assigns) %>
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

  def user_info(socket) do

    with %US{id: user_id} = _current_user <- socket.current_user,

        user_info <-
          US
          |> where([u], u.id == ^user_id)
          |> preload([:course_modules, university: [location: [:rooms]]])
          |> R.one(),

        user_courses <-
          UC
          |> where([uc], uc.user_id == ^user_info.id)
          |> preload(course_module: [:invigilator])
          |> R.all(),

        exams <-
          user_courses
          |> Enum.flat_map(fn uc ->
            EX
            |> where([e], e.course_module_id == ^uc.course_module.id)
            |> preload([:course_module, :room, invigilator: [:course_modules]])
            |> R.all()
          end)
    do

      courses = Enum.map(user_courses, fn uc ->
        cm = uc.course_module
        inv = cm.invigilator

        %{
          code:       cm.code,
          name:       cm.name,
          color:      :red,
          schedule:   Enum.map(user_info.course_modules, & &1.name),
          instructor: (if inv, do: "#{inv.firstname} #{inv.lastname}", else: "TBA")
        }
      end)

      exam_entries = Enum.map(exams, fn e ->
        %{
          course: e.course_module.code,
          time: e.datetime,
          date: e.datetime,
          location: e.room.name,
          duration: e.duration,
          color: :red
        }
      end)

      # build a **unique** list of invigilators from those exams
      invigilators =
        exams
          |> Enum.map(& &1.invigilator)
          |> Enum.uniq_by(& &1.id)
          |> Enum.map(fn inv ->
            # pick the first course module (or whatever logic you need)
            first_mod = inv.course_modules |> List.first()

            %{
              name: inv.firstname <> " " <> inv.lastname,
              course: first_mod && first_mod.name,
              color: :red
            }
          end)

      # map over locations
      location_data =
        if is_nil(user_info.university) do
          []
        else
          Enum.map(user_info.university.location, fn loc ->
            loc_exams =
              exams
              |> Enum.filter(&(&1.room.location_id == loc.id))
              |> Enum.count()

            %{
              name: loc.mode,
              address: loc.venue,
              color: :red,
              rooms: loc.rooms,
              exams: loc_exams
            }
          end)
        end


      {courses, exam_entries, invigilators, user_info.university, location_data}
    else
      _ ->
        {[], [], [], [], []}
    end
  end
end

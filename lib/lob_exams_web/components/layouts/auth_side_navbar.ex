defmodule LobExamsWeb.Layouts.AdminSideNav do
  use LobExamsWeb, :html

  def admin_side_nav(assigns) do
    assigns = assign_new(assigns, :current_page, fn -> "dashboard" end)
    ~H"""
    <!-- Sidebar -->
      <div id="desktop-menu" class="hidden min-h-screen md:w-64 md:bg-gray-800 border-r border-gray-700 md:flex md:flex-col">

        <nav class="flex-1 p-4 space-y-2">
          <a href="/dashboard" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/dashboard" && "bg-gray-900", @conn.request_path != "/dashboard" && "hover:bg-gray-700"]}>
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
            </svg>
            <span>Dashboard</span>
          </a>

          <%= if @current_admin.role != "student" do %>
            <a href="/exam_schedule" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
                @conn.request_path == "/exam_schedule" && "bg-gray-900", @conn.request_path != "/exam_schedule" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
              <span>Exam Schedule</span>
            </a>

            <a href="/rooms" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
                @conn.request_path == "/rooms" && "bg-gray-900", @conn.request_path != "/rooms" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
              </svg>
              <span>Rooms</span>
            </a>
          <% else %>
            <a href="/upcoming_exams" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
                @conn.request_path == "/upcoming_exams" && "bg-gray-900", @conn.request_path != "/upcoming_exams" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
              <span>Upcoming Exams</span>
            </a>
          <% end %>

          <a href={if @current_admin.role != "student", do: "/invigilators", else: "/assigned_invigilators"} class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/invigilators" && "bg-gray-900", @conn.request_path == "/assigned_invigilators" && "bg-gray-900", @conn.request_path != "/invigilators" && "hover:bg-gray-700"]}>
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
            </svg>
            <span>Invigilators</span>
          </a>

          <a href={if @current_admin.role != "student", do: "/course_modules", else: "/courses"} class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/course_modules" && "bg-gray-900", @conn.request_path == "/courses" && "bg-gray-900", @conn.request_path != "/course_modules" && "hover:bg-gray-700"]}>
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
            </svg>
            <span>Course Modules</span>
          </a>

          <a href="/general_settings" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/general_settings" && "bg-gray-900", @conn.request_path != "/general_settings" && "hover:bg-gray-700"]}>
            <i class="fas fa-cog mr-3"></i>
            <span>Settings</span>
          </a>

          <div class="screen-bottom flex flex-col p-1 mt-auto">
            <h1 class="text-xl font-bold text-indigo-400">LOB Flow</h1>
            <p class="text-xs text-gray-400">Exam Scheduling Platform</p>
          </div>
        </nav>
      </div>

      <!-- Mobile Menu -->
      <div id="mobile-menu"
      class="hidden left-0 md:hidden bg-gray-800 border-t border-gray-700">
          <nav class="flex-1 p-4 space-y-2">
            <a href="/dashboard" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/dashboard" && "bg-gray-900", @conn.request_path != "/dashboard" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
              </svg>
              <span>Dashboard</span>
            </a>

            <a href="/schedule_exams" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/schedule_exams" && "bg-gray-900", @conn.request_path != "/schedule_exams" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
              </svg>
              <span>Schedule Exams</span>
            </a>

            <a href="/invigilators" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/invigilators" && "bg-gray-900", @conn.request_path != "/invigilators" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
              </svg>
              <span>Invigilators</span>
            </a>

            <a href="/rooms" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/rooms" && "bg-gray-900", @conn.request_path != "/rooms" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
              </svg>
              <span>Rooms</span>
            </a>

            <a href="/course_modules" class={["flex items-center space-x-2 px-3 py-2 rounded text-gray-300",
              @conn.request_path == "/course_modules" && "bg-gray-900", @conn.request_path != "/course_modules" && "hover:bg-gray-700"]}>
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2" />
              </svg>
              <span>Course Modules</span>
            </a>
          </nav>
      </div>
    """
  end
end

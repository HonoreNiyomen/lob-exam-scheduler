defmodule LobExamsWeb.Live.LecturerDashboard do
  use LobExamsWeb, :live_view

  def lecturer_dashboard(assigns, {_courses, exams, _invigilators, _university, _locations}) do

    assigns =
      assigns
      |> assign_new(:exams, fn -> exams end)
      |> assign_new(:incidents, fn -> [] end)
      |> assign_new(:co_invigilators, fn -> [] end)

    ~H"""
    <!-- Main Content - Invigilator Dashboard -->
    <div class="container mx-auto px-4 py-8">
      <!-- Welcome Header with Status -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
        <div>
          <h1 class="text-3xl font-bold text-white">Professor <span class="text-indigo-400">{@current_user.firstname<>" "<>@current_user.lastname}</span></h1>
          <div class="flex items-center mt-2 space-x-4">
            <span class="inline-flex items-center px-3 py-1 rounded-full text-sm font-medium bg-green-600/20 text-green-400">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
              </svg>
              Active Invigilator
            </span>
            <span class="text-gray-400 flex items-center">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
              </svg>
              Mathematics Department
            </span>
          </div>
        </div>
        <div class="mt-4 md:mt-0">
          <div class="bg-gradient-to-r from-purple-900/30 to-indigo-900/30 border border-gray-700/50 px-4 py-3 rounded-lg shadow-lg">
            <p class="text-sm text-gray-300">Current Session: <span class="font-medium text-white">Summer 2023</span></p>
            <p class="text-sm text-gray-300">Invigilation Load: <span class="font-medium text-white">12/20 hours</span></p>
          </div>
        </div>
      </div>

      <!-- Stats Cards with Glow Effects -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <!-- Upcoming Exams -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-yellow-500/20 transition-all border-l-4 border-yellow-500">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Upcoming Exams</p>
              <h3 class="text-2xl font-bold text-white mt-2">5</h3>
            </div>
            <div class="bg-yellow-600/20 p-3 rounded-full animate-pulse">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">Next: <span class="text-white font-medium">Tomorrow, 9:00 AM</span></p>
          </div>
        </div>

        <!-- Students Supervised -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-indigo-500/20 transition-all border-l-4 border-indigo-500">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Students</p>
              <h3 class="text-2xl font-bold text-white mt-2">142</h3>
            </div>
            <div class="bg-indigo-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">Across <span class="text-white font-medium">3 courses</span></p>
          </div>
        </div>

        <!-- Exam Locations -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-blue-500/20 transition-all border-l-4 border-blue-500">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Exam Venues</p>
              <h3 class="text-2xl font-bold text-white mt-2">3</h3>
            </div>
            <div class="bg-blue-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">Primary: <span class="text-white font-medium">Main Hall A-204</span></p>
          </div>
        </div>

        <!-- Incident Reports -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-red-500/20 transition-all border-l-4 border-red-500">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Incidents</p>
              <h3 class="text-2xl font-bold text-white mt-2">2</h3>
            </div>
            <div class="bg-red-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-red-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">This term: <span class="text-white font-medium">1 unresolved</span></p>
          </div>
        </div>
      </div>

      <!-- Main Dashboard Grid -->
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <!-- Upcoming Exams Column -->
        <div class="lg:col-span-2">
          <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
            <div class="border-b border-gray-700 px-6 py-4 flex justify-between items-center">
              <h2 class="text-xl font-bold text-white flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-yellow-400 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                </svg>
                Your Exam Schedule
              </h2>
              <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-3 py-1 rounded-lg text-sm flex items-center transition-colors">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4" />
                </svg>
                Add Unavailability
              </button>
            </div>
            <div class="divide-y divide-gray-700">
              <%= for exam <- @exams do %>
                <div class="p-6 hover:bg-gray-700/50 transition-colors group">
                  <div class="flex flex-col md:flex-row md:items-center justify-between">
                    <div class="flex items-start space-x-4">
                      <div class={"bg-#{exam.color}-600/10 p-3 rounded-lg group-hover:bg-{exam.color}-600/20 transition-colors"}>
                        <svg xmlns="http://www.w3.org/2000/svg" class={"h-6 w-6 text-#{exam.color}-400"} fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d={"#{exam.icon}"} />
                        </svg>
                      </div>
                      <div>
                        <h3 class="text-lg font-semibold text-white"><%= exam.course %></h3>
                        <div class="flex flex-wrap items-center gap-x-4 mt-1 text-sm text-gray-400">
                          <span class="flex items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                            </svg>
                            <%= exam.date %> • <%= exam.time %>
                          </span>
                          <span class="flex items-center">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                            </svg>
                            <%= exam.location %>
                          </span>
                        </div>
                        <div class="mt-2 flex flex-wrap gap-2">
                          <span class="px-2 py-1 rounded-full text-xs font-medium bg-gray-700 text-gray-300">
                            <%= exam.students %> students
                          </span>
                          <span class={"px-2 py-1 rounded-full text-xs font-medium bg-#{exam.color}-600/20 text-#{exam.color}-400"}>
                            <%= exam.duration %>
                          </span>
                          <%= if exam.co_invigilator do %>
                            <span class="px-2 py-1 rounded-full text-xs font-medium bg-purple-600/20 text-purple-400 flex items-center">
                              <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
                              </svg>
                              <%= exam.co_invigilator %>
                            </span>
                          <% end %>
                        </div>
                      </div>
                    </div>
                    <div class="mt-4 md:mt-0 flex space-x-2">
                      <button class="p-2 text-gray-400 hover:text-white hover:bg-gray-700 rounded-lg transition-colors">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
                        </svg>
                      </button>
                      <button class="p-2 text-gray-400 hover:text-white hover:bg-gray-700 rounded-lg transition-colors">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                        </svg>
                      </button>
                    </div>
                  </div>
                </div>
              <% end %>
            </div>
          </div>
        </div>

        <!-- Right Sidebar -->
        <div class="lg:col-span-1 space-y-6">
          <!-- Quick Actions Card -->
          <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
            <div class="border-b border-gray-700 px-6 py-4">
              <h2 class="text-xl font-bold text-white flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-green-400 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
                </svg>
                Quick Actions
              </h2>
            </div>
            <div class="p-6">
              <div class="grid grid-cols-2 gap-4">
                <button class="bg-indigo-600/10 hover:bg-indigo-600/20 border border-indigo-500/30 text-indigo-400 px-4 py-3 rounded-lg flex flex-col items-center transition-colors">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                  <span class="text-sm">Submit Report</span>
                </button>
                <button class="bg-purple-600/10 hover:bg-purple-600/20 border border-purple-500/30 text-purple-400 px-4 py-3 rounded-lg flex flex-col items-center transition-colors">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
                  </svg>
                  <span class="text-sm">Request Backup</span>
                </button>
                <button class="bg-blue-600/10 hover:bg-blue-600/20 border border-blue-500/30 text-blue-400 px-4 py-3 rounded-lg flex flex-col items-center transition-colors">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                  </svg>
                  <span class="text-sm">View Calendar</span>
                </button>
                <button class="bg-red-600/10 hover:bg-red-600/20 border border-red-500/30 text-red-400 px-4 py-3 rounded-lg flex flex-col items-center transition-colors">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 mb-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                  </svg>
                  <span class="text-sm">Report Issue</span>
                </button>
              </div>
            </div>
          </div>

          <!-- Recent Incidents Card -->
          <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
            <div class="border-b border-gray-700 px-6 py-4">
              <h2 class="text-xl font-bold text-white flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-red-400 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                </svg>
                Recent Incidents
              </h2>
            </div>
            <div class="p-6">
              <ul class="space-y-4">
                <%= for incident <- @incidents do %>
                  <li class="flex items-start space-x-3">
                    <div class="bg-red-600/10 p-2 rounded-full mt-0.5">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-red-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                      </svg>
                    </div>
                    <div>
                      <h3 class="text-sm font-medium text-white"><%= incident.title %></h3>
                      <p class="text-xs text-gray-400"><%= incident.date %> • <%= incident.course %></p>
                      <div class={"mt-1 flex items-center text-xs #{if incident.resolved, do: "text-green-400", else: "text-yellow-400"}"}>
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                        <%= if incident.resolved do %>Resolved<% else %>Pending<% end %>
                      </div>
                    </div>
                  </li>
                <% end %>
              </ul>
              <button class="mt-4 w-full bg-gray-700 hover:bg-gray-600 text-white px-4 py-2 rounded-lg text-sm transition-colors">
                View All Incidents
              </button>
            </div>
          </div>

          <!-- Co-Invigilators Card -->
          <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
            <div class="border-b border-gray-700 px-6 py-4">
              <h2 class="text-xl font-bold text-white flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-purple-400 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                </svg>
                Frequent Co-Invigilators
              </h2>
            </div>
            <div class="p-6">
              <ul class="space-y-4">
                <%= for invigilator <- @co_invigilators do %>
                  <li class="flex items-center space-x-3">
                    <div class="bg-purple-600/10 p-2 rounded-full">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-purple-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                      </svg>
                    </div>
                    <div class="flex-1">
                      <h3 class="text-sm font-medium text-white"><%= invigilator.name %></h3>
                      <p class="text-xs text-gray-400"><%= invigilator.department %></p>
                    </div>
                    <a href="#" class="text-indigo-400 hover:text-indigo-300">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                      </svg>
                    </a>
                  </li>
                <% end %>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end

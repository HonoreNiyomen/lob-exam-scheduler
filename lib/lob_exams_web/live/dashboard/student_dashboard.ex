defmodule LobExamsWeb.Live.StudentDashboard do
  use LobExamsWeb, :live_view

  def student_dashboard(assigns, {courses, exams, invigilators, university, locations}) do

    assigns =
      assigns
      |> assign_new(:courses, fn -> courses end)
      |> assign_new(:exams, fn -> exams end)
      |> assign_new(:invigilators, fn -> invigilators end)
      |> assign_new(:university, fn -> university end)
      |> assign_new(:locations, fn -> locations end)

    ~H"""
    <!-- Main Content - Student Dashboard -->
    <div class="container mx-auto px-4 py-8">
      <!-- Welcome Header -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
        <div>
          <h1 class="text-3xl font-bold text-white">Welcome back, <span class="text-indigo-400">{@current_user.firstname<>" "<>@current_user.lastname}</span></h1>
          <div class="flex items-center mt-2 text-gray-400">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
            </svg>
            <span>Computer Science Department • {@university.name}</span>
          </div>
        </div>
        <div class="mt-4 md:mt-0">
          <div class="bg-gradient-to-r from-indigo-900/30 to-purple-900/30 border border-gray-700/50 px-4 py-2 rounded-lg">
            <p class="text-sm text-gray-300">Academic Year: <span class="font-medium text-white">2023/2024</span></p>
            <p class="text-sm text-gray-300">Semester: <span class="font-medium text-white">2 of 4</span></p>
          </div>
        </div>
      </div>

      <!-- Stats Cards -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <!-- Active Courses -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-indigo-500/10 transition-all">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Active Courses</p>
              <h3 class="text-2xl font-bold text-white mt-2">5</h3>
            </div>
            <div class="bg-indigo-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">Current GPA: <span class="text-green-400 font-medium">3.72</span></p>
          </div>
        </div>

        <!-- Upcoming Exams -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-yellow-500/10 transition-all">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Upcoming Exams</p>
              <h3 class="text-2xl font-bold text-white mt-2">3</h3>
            </div>
            <div class="bg-yellow-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">Next: <span class="text-white font-medium">May 15</span> - Advanced Calculus</p>
          </div>
        </div>

        <!-- Invigilators -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-purple-500/10 transition-all">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Invigilators</p>
              <h3 class="text-2xl font-bold text-white mt-2">4</h3>
            </div>
            <div class="bg-purple-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-purple-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">Primary: <span class="text-white font-medium">Dr. Sarah Johnson</span></p>
          </div>
        </div>

        <!-- Exam Locations -->
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg hover:shadow-blue-500/10 transition-all">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Exam Locations</p>
              <h3 class="text-2xl font-bold text-white mt-2">2</h3>
            </div>
            <div class="bg-blue-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
              </svg>
            </div>
          </div>
          <div class="mt-4 pt-4 border-t border-gray-700">
            <p class="text-xs text-gray-400">Main: <span class="text-white font-medium">Math Building</span></p>
          </div>
        </div>
      </div>

      <!-- Main Dashboard Grid -->
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
        <!-- Current Courses Column -->
        <div class="lg:col-span-1">
          <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
            <div class="border-b border-gray-700 px-6 py-4">
              <h2 class="text-xl font-bold text-white flex items-center">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-indigo-400 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
                </svg>
                Your Courses
              </h2>
            </div>
            <div class="divide-y divide-gray-700">
              <%= for course <- @courses do %>
                <div class="p-6 hover:bg-gray-700/50 transition-colors">
                  <div class="flex items-start space-x-4">
                    <div class="bg-{course.color}-600/10 p-3 rounded-lg">
                      <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-{course.color}-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="{course.icon}" />
                      </svg>
                    </div>
                    <div>
                      <h3 class="text-lg font-semibold text-white"><%= course.code %>: <%= course.name %></h3>
                      <div class="flex items-center mt-1 text-sm text-gray-400">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg>
                        <span><%= course.schedule %></span>
                      </div>
                      <div class="flex items-center mt-1 text-sm text-gray-400">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                        </svg>
                        <span><%= course.instructor %></span>
                      </div>
                    </div>
                  </div>
                </div>
              <% end %>
            </div>
          </div>
        </div>

        <!-- Exams Column -->
        <div class="lg:col-span-2">
          <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden mb-6">
            <div class="border-b border-gray-700">
              <div class="flex">
                <button class="px-6 py-4 text-sm font-medium text-white border-b-2 border-indigo-500">Upcoming Exams</button>
                <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Completed</button>
                <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">All</button>
              </div>
            </div>
            <div class="divide-y divide-gray-700">
              <%= for exam <- @exams do %>
                <div class="p-6 hover:bg-gray-700/50 transition-colors">
                  <div class="flex flex-col md:flex-row md:items-center justify-between">
                    <div class="flex items-start space-x-4">
                      <div class="bg-{exam.color}-600/10 p-3 rounded-lg">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-{exam.color}-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="{exam.icon}" />
                        </svg>
                      </div>
                      <div>
                        <h3 class="text-lg font-semibold text-white"><%= exam.course %></h3>
                        <div class="flex items-center mt-1 text-sm text-gray-400">
                          <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7V3m8 4V3m-9 8h10M5 21h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z" />
                          </svg>
                          <span><%= exam.date %> • <%= exam.time %></span>
                        </div>
                        <div class="flex items-center mt-1 text-sm text-gray-400">
                          <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                          </svg>
                          <span><%= exam.location %></span>
                        </div>
                      </div>
                    </div>
                    <div class="mt-4 md:mt-0 flex items-center space-x-3">
                      <span class="px-3 py-1 rounded-full text-sm font-medium bg-gray-700 text-gray-300"><%= exam.duration %></span>
                      <button class="text-gray-400 hover:text-white">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
                        </svg>
                      </button>
                    </div>
                  </div>
                </div>
              <% end %>
            </div>
          </div>

          <!-- Quick Info Cards -->
          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <!-- Invigilators Card -->
            <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
              <div class="border-b border-gray-700 px-6 py-4">
                <h2 class="text-xl font-bold text-white flex items-center">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-purple-400 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
                  </svg>
                  Your Invigilators
                </h2>
              </div>
              <div class="p-6">
                <ul class="space-y-4">
                  <%= for invigilator <- @invigilators do %>
                    <li class="flex items-center space-x-3">
                      <div class="bg-{invigilator.color}-600/10 p-2 rounded-full">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-{invigilator.color}-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                        </svg>
                      </div>
                      <div>
                        <h3 class="text-sm font-medium text-white"><%= invigilator.name %></h3>
                        <p class="text-xs text-gray-400"><%= invigilator.course %></p>
                      </div>
                    </li>
                  <% end %>
                </ul>
              </div>
            </div>

            <!-- Locations Card -->
            <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
              <div class="border-b border-gray-700 px-6 py-4">
                <h2 class="text-xl font-bold text-white flex items-center">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-blue-400 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                  </svg>
                  Exam Locations
                </h2>
              </div>
              <div class="p-6">
                <ul class="space-y-4">
                  <%= for location <- @locations do %>
                    <li class="flex items-start space-x-3">
                      <div class={"bg-#{location.color}-600/10 p-2 rounded-full mt-0.5"}>
                        <svg xmlns="http://www.w3.org/2000/svg" class={"h-5 w-5 text-#{location.color}-400"} fill="none" viewBox="0 0 24 24" stroke="currentColor">
                          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
                        </svg>
                      </div>
                      <div>
                        <h3 class="text-sm font-medium text-white"><%= location.name %></h3>
                        <p class="text-xs text-gray-400"><%= location.address %></p>
                        <div class="mt-1 flex items-center text-xs text-gray-500">
                          <svg xmlns="http://www.w3.org/2000/svg" class="h-3 w-3 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                          </svg>
                          <%= location.exams %> upcoming exams
                        </div>
                      </div>
                    </li>
                  <% end %>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end

defmodule LobExamsWeb.Live.LecturerScheduleExams do
  use LobExamsWeb, :live_view

  def lecturer_exams(assigns) do
    ~H"""
    <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
      <!-- Header -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
        <div>
          <h1 class="text-3xl font-bold text-white">My Exam Sessions</h1>
          <p class="text-gray-400 mt-2">Manage exams you're scheduled to invigilate</p>
        </div>
        <div class="mt-4 md:mt-0 flex space-x-3">
          <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors">
            <i data-feather="plus" class="w-4 h-4 mr-2"></i>
            New Session
          </button>
          <button id="toggleAllExams" class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors border border-gray-600">
            <i data-feather="list" class="w-4 h-4 mr-2"></i>
            View All Exams
          </button>
          <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors">
            <i data-feather="filter" class="w-4 h-4 mr-2"></i>
            Filters
          </button>
        </div>
      </div>

      <!-- Stats Cards -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <div class="bg-gradient-to-br from-indigo-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-indigo-900/30">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Today's Sessions</p>
              <h3 class="text-2xl font-bold text-white mt-2">3</h3>
            </div>
            <div class="bg-indigo-600/20 p-3 rounded-full">
              <i data-feather="clock" class="w-6 h-6 text-indigo-400"></i>
            </div>
          </div>
        </div>
        <div class="bg-gradient-to-br from-purple-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-purple-900/30">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Upcoming</p>
              <h3 class="text-2xl font-bold text-white mt-2">7</h3>
            </div>
            <div class="bg-purple-600/20 p-3 rounded-full">
              <i data-feather="calendar" class="w-6 h-6 text-purple-400"></i>
            </div>
          </div>
        </div>
        <div class="bg-gradient-to-br from-blue-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-blue-900/30">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Completed</p>
              <h3 class="text-2xl font-bold text-white mt-2">14</h3>
            </div>
            <div class="bg-blue-600/20 p-3 rounded-full">
              <i data-feather="check-circle" class="w-6 h-6 text-blue-400"></i>
            </div>
          </div>
        </div>
        <div class="bg-gradient-to-br from-amber-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-amber-900/30">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Students Monitored</p>
              <h3 class="text-2xl font-bold text-white mt-2">248</h3>
            </div>
            <div class="bg-amber-600/20 p-3 rounded-full">
              <i data-feather="users" class="w-6 h-6 text-amber-400"></i>
            </div>
          </div>
        </div>
      </div>

      <!-- Schedule Section -->
      <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden border border-gray-700">
        <!-- Tabs -->
        <div class="border-b border-gray-700">
          <div class="flex">
            <button class="px-6 py-4 text-sm font-medium text-white border-b-2 border-indigo-500">Today</button>
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Upcoming</button>
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Completed</button>
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">All Sessions</button>
          </div>
        </div>

        <!-- Exam List -->
        <div class="divide-y divide-gray-700 custom-scrollbar" style="max-height: 500px; overflow-y: auto;">
          <!-- Today's Exam Card 1 -->
          <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer group">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-indigo-600/10 p-3 rounded-lg group-hover:bg-indigo-600/20 transition-colors">
                  <i data-feather="book" class="w-6 h-6 text-indigo-400"></i>
                </div>
                <div>
                  <div class="flex items-center">
                    <h3 class="text-lg font-semibold text-white">Linear Algebra - Final Exam</h3>
                    <span class="ml-3 px-2 py-0.5 rounded-full text-xs font-medium bg-indigo-900/30 text-indigo-300">ONGOING</span>
                  </div>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <i data-feather="calendar" class="w-4 h-4 mr-1"></i>
                    <span>Today • 09:00 AM - 11:30 AM</span>
                  </div>
                  <div class="flex flex-wrap gap-2 mt-2">
                    <span class="flex items-center text-xs text-gray-400">
                      <i data-feather="map-pin" class="w-3 h-3 mr-1"></i>
                      <span>Lecture Hall B</span>
                    </span>
                    <span class="flex items-center text-xs text-gray-400">
                      <i data-feather="users" class="w-3 h-3 mr-1"></i>
                      <span>84 students</span>
                    </span>
                    <span class="flex items-center text-xs text-gray-400">
                      <i data-feather="file-text" class="w-3 h-3 mr-1"></i>
                      <span>2 exam papers</span>
                    </span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 flex items-center space-x-3">
                <button class="text-gray-400 hover:text-white tooltip" data-tooltip="Attendance">
                  <i data-feather="clipboard" class="w-5 h-5"></i>
                </button>
                <button class="text-gray-400 hover:text-white tooltip" data-tooltip="Reports">
                  <i data-feather="file-text" class="w-5 h-5"></i>
                </button>
                <button class="text-gray-400 hover:text-white tooltip" data-tooltip="More">
                  <i data-feather="more-vertical" class="w-5 h-5"></i>
                </button>
              </div>
            </div>
          </div>

          <!-- Today's Exam Card 2 -->
          <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer group">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-purple-600/10 p-3 rounded-lg group-hover:bg-purple-600/20 transition-colors">
                  <i data-feather="cpu" class="w-6 h-6 text-purple-400"></i>
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-white">Data Structures - Practical Test</h3>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <i data-feather="calendar" class="w-4 h-4 mr-1"></i>
                    <span>Today • 02:00 PM - 04:00 PM</span>
                  </div>
                  <div class="flex flex-wrap gap-2 mt-2">
                    <span class="flex items-center text-xs text-gray-400">
                      <i data-feather="map-pin" class="w-3 h-3 mr-1"></i>
                      <span>Computer Lab 4</span>
                    </span>
                    <span class="flex items-center text-xs text-gray-400">
                      <i data-feather="users" class="w-3 h-3 mr-1"></i>
                      <span>32 students</span>
                    </span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 flex items-center space-x-3">
                <button class="text-gray-400 hover:text-white tooltip" data-tooltip="Attendance">
                  <i data-feather="clipboard" class="w-5 h-5"></i>
                </button>
                <button class="text-gray-400 hover:text-white tooltip" data-tooltip="Reports">
                  <i data-feather="file-text" class="w-5 h-5"></i>
                </button>
                <button class="text-gray-400 hover:text-white">
                  <i data-feather="more-vertical" class="w-5 h-5"></i>
                </button>
              </div>
            </div>
          </div>

          <!-- Upcoming Exam Card (Hidden by default) -->
          <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer group hidden all-exam">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-blue-600/10 p-3 rounded-lg group-hover:bg-blue-600/20 transition-colors">
                  <i data-feather="dna" class="w-6 h-6 text-blue-400"></i>
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-white">Genetics - Midterm Exam</h3>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <i data-feather="calendar" class="w-4 h-4 mr-1"></i>
                    <span>Tomorrow • 10:00 AM - 12:00 PM</span>
                  </div>
                  <div class="flex flex-wrap gap-2 mt-2">
                    <span class="flex items-center text-xs text-gray-400">
                      <i data-feather="map-pin" class="w-3 h-3 mr-1"></i>
                      <span>Science Block A</span>
                    </span>
                    <span class="flex items-center text-xs text-gray-400">
                      <i data-feather="users" class="w-3 h-3 mr-1"></i>
                      <span>56 students</span>
                    </span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 flex items-center space-x-3">
                <button class="text-gray-400 hover:text-white tooltip" data-tooltip="Attendance">
                  <i data-feather="clipboard" class="w-5 h-5"></i>
                </button>
                <button class="text-gray-400 hover:text-white">
                  <i data-feather="more-vertical" class="w-5 h-5"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end

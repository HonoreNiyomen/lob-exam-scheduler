defmodule LobExamsWeb.Live.AdminScheduleExams do
  use LobExamsWeb, :live_view

  # Add your LiveView logic here
  def admin_exams(assigns) do
    ~H"""
    <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
      <!-- Header with Breadcrumbs -->
      <div class="flex flex-col space-y-4 mb-8">
        <div class="flex items-center text-sm text-gray-400">
          <a href="#" class="hover:text-indigo-400">Dashboard</a>
          <i data-feather="chevron-right" class="w-4 h-4 mx-2"></i>
          <span class="text-white">Exam Administration</span>
        </div>

        <div class="flex flex-col md:flex-row justify-between items-start md:items-center">
          <div>
            <h1 class="text-3xl font-bold text-white">University Exam Oversight</h1>
            <p class="text-gray-400 mt-2">Manage all examinations across campuses and departments</p>
          </div>
          <div class="mt-4 md:mt-0 flex space-x-3">
            <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors shadow-lg shadow-indigo-900/30">
              <i data-feather="plus" class="w-4 h-4 mr-2"></i>
              Schedule Exam
            </button>
            <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors border border-gray-700">
              <i data-feather="download" class="w-4 h-4 mr-2"></i>
              Export
            </button>
          </div>
        </div>
      </div>

      <!-- University Overview Cards -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <!-- Active Exams -->
        <div class="bg-gradient-to-br from-indigo-900/40 to-gray-800 rounded-xl p-6 shadow-lg border-t border-indigo-900/20 relative overflow-hidden">
          <div class="absolute -right-4 -top-4 opacity-20">
            <i data-feather="activity" class="w-16 h-16 text-indigo-300"></i>
          </div>
          <div class="relative">
            <p class="text-gray-400 text-sm">Active Exams</p>
            <h3 class="text-2xl font-bold text-white mt-2">18</h3>
            <div class="flex items-center mt-4">
              <span class="text-green-400 text-xs flex items-center">
                <i data-feather="trending-up" class="w-3 h-3 mr-1"></i>
                +3 from last week
              </span>
            </div>
          </div>
        </div>

        <!-- Total Students -->
        <div class="bg-gradient-to-br from-purple-900/40 to-gray-800 rounded-xl p-6 shadow-lg border-t border-purple-900/20 relative overflow-hidden">
          <div class="absolute -right-4 -top-4 opacity-20">
            <i data-feather="users" class="w-16 h-16 text-purple-300"></i>
          </div>
          <div class="relative">
            <p class="text-gray-400 text-sm">Students Testing</p>
            <h3 class="text-2xl font-bold text-white mt-2">2,417</h3>
            <div class="flex items-center mt-4">
              <span class="text-xs text-gray-400 flex items-center">
                <i data-feather="calendar" class="w-3 h-3 mr-1"></i>
                This week
              </span>
            </div>
          </div>
        </div>

        <!-- Departments -->
        <div class="bg-gradient-to-br from-blue-900/40 to-gray-800 rounded-xl p-6 shadow-lg border-t border-blue-900/20 relative overflow-hidden">
          <div class="absolute -right-4 -top-4 opacity-20">
            <i data-feather="layers" class="w-16 h-16 text-blue-300"></i>
          </div>
          <div class="relative">
            <p class="text-gray-400 text-sm">Departments</p>
            <h3 class="text-2xl font-bold text-white mt-2">14</h3>
            <div class="flex items-center mt-4">
              <span class="text-xs text-gray-400 flex items-center">
                <i data-feather="book" class="w-3 h-3 mr-1"></i>
                87 courses
              </span>
            </div>
          </div>
        </div>

        <!-- Exam Rooms -->
        <div class="bg-gradient-to-br from-amber-900/40 to-gray-800 rounded-xl p-6 shadow-lg border-t border-amber-900/20 relative overflow-hidden">
          <div class="absolute -right-4 -top-4 opacity-20">
            <i data-feather="map-pin" class="w-16 h-16 text-amber-300"></i>
          </div>
          <div class="relative">
            <p class="text-gray-400 text-sm">Exam Locations</p>
            <h3 class="text-2xl font-bold text-white mt-2">32</h3>
            <div class="flex items-center mt-4">
              <span class="text-xs text-gray-400 flex items-center">
                <i data-feather="cpu" class="w-3 h-3 mr-1"></i>
                8 computer labs
              </span>
            </div>
          </div>
        </div>
      </div>

      <!-- Main Dashboard -->
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
        <!-- Exam Timeline Chart -->
        <div class="lg:col-span-2 bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <div class="flex justify-between items-center mb-6">
            <h2 class="text-xl font-semibold text-white">Exam Schedule Timeline</h2>
            <div class="flex space-x-2">
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300">Week</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-indigo-600 text-white">Month</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300">Semester</button>
            </div>
          </div>
          <div class="h-64 bg-gray-900/50 rounded-lg border border-gray-700 flex items-center justify-center">
            <!-- Chart would go here -->
            <div class="text-center p-4">
              <i data-feather="bar-chart-2" class="w-12 h-12 text-gray-600 mx-auto mb-2"></i>
              <p class="text-gray-500">Exam distribution visualization</p>
            </div>
          </div>
        </div>

        <!-- Top Exams by Participation -->
        <div class="bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <h2 class="text-xl font-semibold text-white mb-6">Top Exams by Enrollment</h2>
          <div class="space-y-4">
            <!-- Exam 1 -->
            <div class="flex items-center justify-between">
              <div class="flex items-center space-x-3">
                <div class="bg-indigo-600/10 p-2 rounded-lg">
                  <i data-feather="book" class="w-5 h-5 text-indigo-400"></i>
                </div>
                <div>
                  <h4 class="text-sm font-medium text-white">Calculus II</h4>
                  <p class="text-xs text-gray-400">Mathematics Dept.</p>
                </div>
              </div>
              <div class="text-right">
                <p class="text-sm font-semibold text-white">284</p>
                <p class="text-xs text-gray-400">students</p>
              </div>
            </div>

            <!-- Exam 2 -->
            <div class="flex items-center justify-between">
              <div class="flex items-center space-x-3">
                <div class="bg-purple-600/10 p-2 rounded-lg">
                  <i data-feather="cpu" class="w-5 h-5 text-purple-400"></i>
                </div>
                <div>
                  <h4 class="text-sm font-medium text-white">Data Structures</h4>
                  <p class="text-xs text-gray-400">Computer Science</p>
                </div>
              </div>
              <div class="text-right">
                <p class="text-sm font-semibold text-white">217</p>
                <p class="text-xs text-gray-400">students</p>
              </div>
            </div>

            <!-- Exam 3 -->
            <div class="flex items-center justify-between">
              <div class="flex items-center space-x-3">
                <div class="bg-blue-600/10 p-2 rounded-lg">
                  <i data-feather="globe" class="w-5 h-5 text-blue-400"></i>
                </div>
                <div>
                  <h4 class="text-sm font-medium text-white">World History</h4>
                  <p class="text-xs text-gray-400">Humanities</p>
                </div>
              </div>
              <div class="text-right">
                <p class="text-sm font-semibold text-white">195</p>
                <p class="text-xs text-gray-400">students</p>
              </div>
            </div>

            <!-- Exam 4 -->
            <div class="flex items-center justify-between">
              <div class="flex items-center space-x-3">
                <div class="bg-green-600/10 p-2 rounded-lg">
                  <i data-feather="dna" class="w-5 h-5 text-green-400"></i>
                </div>
                <div>
                  <h4 class="text-sm font-medium text-white">Genetics</h4>
                  <p class="text-xs text-gray-400">Biology</p>
                </div>
              </div>
              <div class="text-right">
                <p class="text-sm font-semibold text-white">182</p>
                <p class="text-xs text-gray-400">students</p>
              </div>
            </div>

            <!-- Exam 5 -->
            <div class="flex items-center justify-between">
              <div class="flex items-center space-x-3">
                <div class="bg-red-600/10 p-2 rounded-lg">
                  <i data-feather="flask" class="w-5 h-5 text-red-400"></i>
                </div>
                <div>
                  <h4 class="text-sm font-medium text-white">Organic Chemistry</h4>
                  <p class="text-xs text-gray-400">Chemistry</p>
                </div>
              </div>
              <div class="text-right">
                <p class="text-sm font-semibold text-white">168</p>
                <p class="text-xs text-gray-400">students</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Exam Management Table -->
      <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden border border-gray-700">
        <div class="px-6 py-4 border-b border-gray-700 flex justify-between items-center">
          <h2 class="text-lg font-semibold text-white">All Scheduled Examinations</h2>
          <div class="relative">
            <i data-feather="search" class="absolute left-3 top-1/2 transform -translate-y-1/2 w-4 h-4 text-gray-500"></i>
            <input type="text" placeholder="Search exams..." class="bg-gray-900 text-sm rounded-lg pl-10 pr-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent" style="min-width: 250px;">
          </div>
        </div>

        <div class="overflow-x-auto">
          <table class="w-full">
            <thead class="bg-gray-900 text-gray-400 text-xs uppercase">
              <tr>
                <th class="px-6 py-3 text-left">Exam Title</th>
                <th class="px-6 py-3 text-left">Department</th>
                <th class="px-6 py-3 text-left">Date & Time</th>
                <th class="px-6 py-3 text-left">Location</th>
                <th class="px-6 py-3 text-right">Students</th>
                <th class="px-6 py-3 text-right">Actions</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-gray-700">
              <!-- Row 1 -->
              <tr class="hover:bg-gray-700/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="flex items-center">
                    <div class="bg-indigo-600/10 p-2 rounded-lg mr-3">
                      <i data-feather="book" class="w-5 h-5 text-indigo-400"></i>
                    </div>
                    <div>
                      <div class="text-sm font-medium text-white">Linear Algebra Final</div>
                      <div class="text-xs text-gray-400">MATH-301</div>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Mathematics</td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm text-white">May 15, 09:00</div>
                  <div class="text-xs text-gray-400">Duration: 2h 30m</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Lecture Hall B</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">142</td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <button class="text-gray-400 hover:text-indigo-400 p-1">
                    <i data-feather="edit" class="w-4 h-4"></i>
                  </button>
                  <button class="text-gray-400 hover:text-red-400 p-1 ml-2">
                    <i data-feather="trash-2" class="w-4 h-4"></i>
                  </button>
                </td>
              </tr>

              <!-- Row 2 -->
              <tr class="hover:bg-gray-700/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="flex items-center">
                    <div class="bg-purple-600/10 p-2 rounded-lg mr-3">
                      <i data-feather="cpu" class="w-5 h-5 text-purple-400"></i>
                    </div>
                    <div>
                      <div class="text-sm font-medium text-white">Database Systems</div>
                      <div class="text-xs text-gray-400">CS-410</div>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Computer Science</td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm text-white">May 16, 13:30</div>
                  <div class="text-xs text-gray-400">Duration: 3h</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Computer Lab 3</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">87</td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <button class="text-gray-400 hover:text-indigo-400 p-1">
                    <i data-feather="edit" class="w-4 h-4"></i>
                  </button>
                  <button class="text-gray-400 hover:text-red-400 p-1 ml-2">
                    <i data-feather="trash-2" class="w-4 h-4"></i>
                  </button>
                </td>
              </tr>

              <!-- Row 3 -->
              <tr class="hover:bg-gray-700/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="flex items-center">
                    <div class="bg-blue-600/10 p-2 rounded-lg mr-3">
                      <i data-feather="globe" class="w-5 h-5 text-blue-400"></i>
                    </div>
                    <div>
                      <div class="text-sm font-medium text-white">Modern World History</div>
                      <div class="text-xs text-gray-400">HIST-202</div>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Humanities</td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm text-white">May 17, 10:00</div>
                  <div class="text-xs text-gray-400">Duration: 2h</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Room 105</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">156</td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <button class="text-gray-400 hover:text-indigo-400 p-1">
                    <i data-feather="edit" class="w-4 h-4"></i>
                  </button>
                  <button class="text-gray-400 hover:text-red-400 p-1 ml-2">
                    <i data-feather="trash-2" class="w-4 h-4"></i>
                  </button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <!-- Table Footer -->
        <div class="px-6 py-4 border-t border-gray-700 flex items-center justify-between">
          <div class="text-sm text-gray-400">
            Showing <span class="font-medium text-white">1</span> to <span class="font-medium text-white">3</span> of <span class="font-medium text-white">18</span> exams
          </div>
          <div class="flex space-x-2">
            <button class="px-3 py-1 rounded-lg bg-gray-700 text-gray-300 text-sm">
              Previous
            </button>
            <button class="px-3 py-1 rounded-lg bg-indigo-600 text-white text-sm">
              1
            </button>
            <button class="px-3 py-1 rounded-lg bg-gray-700 text-gray-300 text-sm">
              2
            </button>
            <button class="px-3 py-1 rounded-lg bg-gray-700 text-gray-300 text-sm">
              Next
            </button>
          </div>
        </div>
      </div>
    </div>
    """
  end
end

defmodule LobExamsWeb.Live.InstitutionScheduleExams do
  use LobExamsWeb, :live_view

  def institution_exams(assigns) do
    ~H"""
      <!-- Main Content -->
      <div class="container mx-auto px-4 py-8">
        <!-- Header with University Logo & Stats -->
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
          <div class="flex items-center space-x-4">
            <div class="bg-indigo-600/20 p-3 rounded-xl">
              <i data-feather="award" class="w-8 h-8 text-indigo-400"></i>
            </div>
            <div>
              <h1 class="text-3xl font-bold text-white">University Exam Analytics</h1>
              <p class="text-gray-400 mt-1">Track exams, student participation & performance</p>
            </div>
          </div>
          <div class="mt-4 md:mt-0 flex space-x-3">
            <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-all shadow-lg hover:shadow-indigo-500/20">
              <i data-feather="plus" class="w-4 h-4 mr-2"></i>
              Schedule New Exam
            </button>
            <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-all border border-gray-700">
              <i data-feather="download" class="w-4 h-4 mr-2"></i>
              Export Data
            </button>
          </div>
        </div>

        <!-- 🔥 Stats Cards (Animated) -->
        <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
          <!-- Total Exams -->
          <div class="bg-gradient-to-br from-indigo-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-indigo-900/30 hover:scale-[1.02] transition-transform">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-400">Total Exams</p>
                <h3 class="text-2xl font-bold text-white mt-1">47</h3>
                <p class="text-xs text-gray-400 mt-2 flex items-center">
                  <i data-feather="trending-up" class="w-3 h-3 mr-1 text-green-400"></i>
                  +12% this semester
                </p>
              </div>
              <div class="bg-indigo-600/20 p-3 rounded-full">
                <i data-feather="book" class="w-6 h-6 text-indigo-400"></i>
              </div>
            </div>
          </div>

          <!-- Students Enrolled -->
          <div class="bg-gradient-to-br from-purple-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-purple-900/30 hover:scale-[1.02] transition-transform">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-400">Students Enrolled</p>
                <h3 class="text-2xl font-bold text-white mt-1">3,284</h3>
                <p class="text-xs text-gray-400 mt-2 flex items-center">
                  <i data-feather="user" class="w-3 h-3 mr-1 text-blue-400"></i>
                  Avg. 68 per exam
                </p>
              </div>
              <div class="bg-purple-600/20 p-3 rounded-full">
                <i data-feather="users" class="w-6 h-6 text-purple-400"></i>
              </div>
            </div>
          </div>

          <!-- Departments -->
          <div class="bg-gradient-to-br from-blue-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-blue-900/30 hover:scale-[1.02] transition-transform">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-400">Departments</p>
                <h3 class="text-2xl font-bold text-white mt-1">16</h3>
                <p class="text-xs text-gray-400 mt-2 flex items-center">
                  <i data-feather="layers" class="w-3 h-3 mr-1 text-amber-400"></i>
                  92 courses
                </p>
              </div>
              <div class="bg-blue-600/20 p-3 rounded-full">
                <i data-feather="grid" class="w-6 h-6 text-blue-400"></i>
              </div>
            </div>
          </div>

          <!-- Exam Locations -->
          <div class="bg-gradient-to-br from-amber-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-amber-900/30 hover:scale-[1.02] transition-transform">
            <div class="flex items-center justify-between">
              <div>
                <p class="text-gray-400">Exam Locations</p>
                <h3 class="text-2xl font-bold text-white mt-1">28</h3>
                <p class="text-xs text-gray-400 mt-2 flex items-center">
                  <i data-feather="map-pin" class="w-3 h-3 mr-1 text-red-400"></i>
                  6 labs, 22 halls
                </p>
              </div>
              <div class="bg-amber-600/20 p-3 rounded-full">
                <i data-feather="map" class="w-6 h-6 text-amber-400"></i>
              </div>
            </div>
          </div>
        </div>

        <!-- 📊 Exam Participation Chart -->
        <div class="bg-gray-800 rounded-xl shadow-lg p-6 mb-8 border border-gray-700">
          <div class="flex justify-between items-center mb-6">
            <h2 class="text-xl font-semibold text-white">Exam Participation Trends</h2>
            <div class="flex space-x-2">
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Weekly</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-indigo-600 text-white">Monthly</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Yearly</button>
            </div>
          </div>
          <div class="h-80 bg-gray-900/50 rounded-lg border border-gray-700 flex items-center justify-center">
            <!-- Placeholder for chart (would be dynamic in real app) -->
            <div class="text-center p-4">
              <i data-feather="bar-chart-2" class="w-16 h-16 text-gray-600 mx-auto mb-3"></i>
              <p class="text-gray-500">Visualization of students per exam</p>
              <p class="text-xs text-gray-600 mt-1">(Interactive chart showing trends)</p>
            </div>
          </div>
        </div>

        <!-- 🏆 Top 5 Exams by Enrollment -->
        <div class="bg-gray-800 rounded-xl shadow-lg p-6 mb-8 border border-gray-700">
          <h2 class="text-xl font-semibold text-white mb-6">Most Popular Exams</h2>
          <div class="grid grid-cols-1 md:grid-cols-5 gap-4">
            <!-- Exam 1 -->
            <div class="bg-gray-900/50 hover:bg-gray-700/50 p-4 rounded-lg transition-all cursor-pointer border border-gray-700">
              <div class="flex items-center justify-between mb-3">
                <div class="bg-indigo-600/10 p-2 rounded-lg">
                  <i data-feather="book" class="w-5 h-5 text-indigo-400"></i>
                </div>
                <span class="text-xs px-2 py-1 bg-gray-800 rounded-full text-gray-300">Math</span>
              </div>
              <h3 class="text-md font-semibold text-white mb-1">Calculus II</h3>
              <p class="text-xs text-gray-400 mb-3">Dr. Smith</p>
              <div class="flex items-center justify-between">
                <span class="text-sm font-bold text-white">312</span>
                <span class="text-xs text-gray-400">students</span>
              </div>
            </div>

            <!-- Exam 2 -->
            <div class="bg-gray-900/50 hover:bg-gray-700/50 p-4 rounded-lg transition-all cursor-pointer border border-gray-700">
              <div class="flex items-center justify-between mb-3">
                <div class="bg-purple-600/10 p-2 rounded-lg">
                  <i data-feather="cpu" class="w-5 h-5 text-purple-400"></i>
                </div>
                <span class="text-xs px-2 py-1 bg-gray-800 rounded-full text-gray-300">CS</span>
              </div>
              <h3 class="text-md font-semibold text-white mb-1">Data Structures</h3>
              <p class="text-xs text-gray-400 mb-3">Prof. Johnson</p>
              <div class="flex items-center justify-between">
                <span class="text-sm font-bold text-white">287</span>
                <span class="text-xs text-gray-400">students</span>
              </div>
            </div>

            <!-- Exam 3 -->
            <div class="bg-gray-900/50 hover:bg-gray-700/50 p-4 rounded-lg transition-all cursor-pointer border border-gray-700">
              <div class="flex items-center justify-between mb-3">
                <div class="bg-blue-600/10 p-2 rounded-lg">
                  <i data-feather="globe" class="w-5 h-5 text-blue-400"></i>
                </div>
                <span class="text-xs px-2 py-1 bg-gray-800 rounded-full text-gray-300">History</span>
              </div>
              <h3 class="text-md font-semibold text-white mb-1">World History</h3>
              <p class="text-xs text-gray-400 mb-3">Dr. Lee</p>
              <div class="flex items-center justify-between">
                <span class="text-sm font-bold text-white">264</span>
                <span class="text-xs text-gray-400">students</span>
              </div>
            </div>

            <!-- Exam 4 -->
            <div class="bg-gray-900/50 hover:bg-gray-700/50 p-4 rounded-lg transition-all cursor-pointer border border-gray-700">
              <div class="flex items-center justify-between mb-3">
                <div class="bg-green-600/10 p-2 rounded-lg">
                  <i data-feather="dna" class="w-5 h-5 text-green-400"></i>
                </div>
                <span class="text-xs px-2 py-1 bg-gray-800 rounded-full text-gray-300">Biology</span>
              </div>
              <h3 class="text-md font-semibold text-white mb-1">Genetics</h3>
              <p class="text-xs text-gray-400 mb-3">Prof. Davis</p>
              <div class="flex items-center justify-between">
                <span class="text-sm font-bold text-white">231</span>
                <span class="text-xs text-gray-400">students</span>
              </div>
            </div>

            <!-- Exam 5 -->
            <div class="bg-gray-900/50 hover:bg-gray-700/50 p-4 rounded-lg transition-all cursor-pointer border border-gray-700">
              <div class="flex items-center justify-between mb-3">
                <div class="bg-red-600/10 p-2 rounded-lg">
                  <i data-feather="flask" class="w-5 h-5 text-red-400"></i>
                </div>
                <span class="text-xs px-2 py-1 bg-gray-800 rounded-full text-gray-300">Chemistry</span>
              </div>
              <h3 class="text-md font-semibold text-white mb-1">Organic Chem</h3>
              <p class="text-xs text-gray-400 mb-3">Dr. Wilson</p>
              <div class="flex items-center justify-between">
                <span class="text-sm font-bold text-white">198</span>
                <span class="text-xs text-gray-400">students</span>
              </div>
            </div>
          </div>
        </div>

        <!-- 📜 Full Exam List -->
        <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden border border-gray-700">
          <div class="px-6 py-4 border-b border-gray-700 flex flex-col md:flex-row justify-between items-start md:items-center">
            <h2 class="text-lg font-semibold text-white mb-2 md:mb-0">All Upcoming Exams</h2>
            <div class="flex space-x-3">
              <div class="relative">
                <i data-feather="search" class="absolute left-3 top-1/2 transform -translate-y-1/2 w-4 h-4 text-gray-500"></i>
                <input type="text" placeholder="Search exams..." class="bg-gray-900 text-sm rounded-lg pl-10 pr-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent" style="min-width: 200px;">
              </div>
              <button class="bg-gray-700 hover:bg-gray-600 text-white px-3 py-2 rounded-lg flex items-center text-sm">
                <i data-feather="filter" class="w-4 h-4 mr-1"></i>
                Filters
              </button>
            </div>
          </div>

          <div class="overflow-x-auto">
            <table class="w-full">
              <thead class="bg-gray-900 text-gray-400 text-xs uppercase">
                <tr>
                  <th class="px-6 py-3 text-left">Exam</th>
                  <th class="px-6 py-3 text-left">Department</th>
                  <th class="px-6 py-3 text-left">Date & Time</th>
                  <th class="px-6 py-3 text-left">Location</th>
                  <th class="px-6 py-3 text-right">Students</th>
                  <th class="px-6 py-3 text-right">Status</th>
                </tr>
              </thead>
              <tbody class="divide-y divide-gray-700">
                <!-- Exam 1 -->
                <tr class="hover:bg-gray-700/50 transition-colors">
                  <td class="px-6 py-4 whitespace-nowrap">
                    <div class="flex items-center">
                      <div class="bg-indigo-600/10 p-2 rounded-lg mr-3">
                        <i data-feather="book" class="w-5 h-5 text-indigo-400"></i>
                      </div>
                      <div>
                        <div class="text-sm font-medium text-white">Linear Algebra</div>
                        <div class="text-xs text-gray-400">MATH-301</div>
                      </div>
                    </div>
                  </td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Mathematics</td>
                  <td class="px-6 py-4 whitespace-nowrap">
                    <div class="text-sm text-white">May 15, 09:00 AM</div>
                    <div class="text-xs text-gray-400">2h 30m</div>
                  </td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Lecture Hall B</td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">142</td>
                  <td class="px-6 py-4 whitespace-nowrap text-right">
                    <span class="px-2 py-1 rounded-full text-xs font-medium bg-green-900/30 text-green-400">Scheduled</span>
                  </td>
                </tr>

                <!-- Exam 2 -->
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
                    <div class="text-sm text-white">May 16, 01:30 PM</div>
                    <div class="text-xs text-gray-400">3h</div>
                  </td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Computer Lab 3</td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">87</td>
                  <td class="px-6 py-4 whitespace-nowrap text-right">
                    <span class="px-2 py-1 rounded-full text-xs font-medium bg-blue-900/30 text-blue-400">Confirmed</span>
                  </td>
                </tr>

                <!-- Exam 3 -->
                <tr class="hover:bg-gray-700/50 transition-colors">
                  <td class="px-6 py-4 whitespace-nowrap">
                    <div class="flex items-center">
                      <div class="bg-blue-600/10 p-2 rounded-lg mr-3">
                        <i data-feather="globe" class="w-5 h-5 text-blue-400"></i>
                      </div>
                      <div>
                        <div class="text-sm font-medium text-white">Modern History</div>
                        <div class="text-xs text-gray-400">HIST-202</div>
                      </div>
                    </div>
                  </td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Humanities</td>
                  <td class="px-6 py-4 whitespace-nowrap">
                    <div class="text-sm text-white">May 17, 10:00 AM</div>
                    <div class="text-xs text-gray-400">2h</div>
                  </td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Room 105</td>
                  <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">156</td>
                  <td class="px-6 py-4 whitespace-nowrap text-right">
                    <span class="px-2 py-1 rounded-full text-xs font-medium bg-green-900/30 text-green-400">Scheduled</span>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

          <!-- Pagination -->
          <div class="px-6 py-4 border-t border-gray-700 flex items-center justify-between">
            <div class="text-sm text-gray-400">
              Showing <span class="font-medium text-white">1</span> to <span class="font-medium text-white">3</span> of <span class="font-medium text-white">47</span> exams
            </div>
            <div class="flex space-x-2">
              <button class="px-3 py-1 rounded-lg bg-gray-700 text-gray-300 text-sm hover:bg-gray-600">
                Previous
              </button>
              <button class="px-3 py-1 rounded-lg bg-indigo-600 text-white text-sm">
                1
              </button>
              <button class="px-3 py-1 rounded-lg bg-gray-700 text-gray-300 text-sm hover:bg-gray-600">
                2
              </button>
              <button class="px-3 py-1 rounded-lg bg-gray-700 text-gray-300 text-sm hover:bg-gray-600">
                Next
              </button>
            </div>
          </div>
        </div>
      </div>
    """
  end
end

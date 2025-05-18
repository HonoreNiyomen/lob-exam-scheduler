defmodule LobExamsWeb.Live.InstitutionDashboard do
  use LobExamsWeb, :live_view

  def institution_dashboard(assigns) do
    ~H"""
    <%!-- <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
      <!-- Hero Header with University Branding -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8 bg-gradient-to-r from-blue-900/30 to-indigo-900/30 rounded-xl p-6 border border-blue-800/30">
        <div>
          <div class="flex items-center space-x-3 mb-2">
            <h1 class="text-2xl font-bold text-white">Welcome to <span class="text-blue-300">Stanford University</span></h1>
          </div>
          <p class="text-gray-300 max-w-2xl">Manage academic operations, track student performance, and oversee institutional analytics from this centralized dashboard.</p>
        </div>
        <div class="mt-4 md:mt-0">
          <button class="bg-white hover:bg-gray-100 text-blue-900 px-4 py-2 rounded-lg flex items-center transition-all shadow-lg">
            <i data-feather="bell" class="w-4 h-4 mr-2"></i>
            Announcements
          </button>
        </div>
      </div>

      <!-- 🔥 Key Academic Metrics -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <!-- Total Students -->
        <div class="bg-gradient-to-br from-blue-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-blue-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Total Students</p>
              <h3 class="text-2xl font-bold text-white mt-1">17,246</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="trending-up" class="w-3 h-3 mr-1 text-green-400"></i>
                12% increase YOY
              </p>
            </div>
            <div class="bg-blue-600/20 p-3 rounded-full">
              <i data-feather="users" class="w-6 h-6 text-blue-400"></i>
            </div>
          </div>
        </div>

        <!-- Faculty Count -->
        <div class="bg-gradient-to-br from-purple-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-purple-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Faculty Members</p>
              <h3 class="text-2xl font-bold text-white mt-1">2,184</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="user-check" class="w-3 h-3 mr-1 text-purple-400"></i>
                94% PhD holders
              </p>
            </div>
            <div class="bg-purple-600/20 p-3 rounded-full">
              <i data-feather="award" class="w-6 h-6 text-purple-400"></i>
            </div>
          </div>
        </div>

        <!-- Courses Offered -->
        <div class="bg-gradient-to-br from-green-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-green-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Courses Offered</p>
              <h3 class="text-2xl font-bold text-white mt-1">362</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="book-open" class="w-3 h-3 mr-1 text-green-400"></i>
                28 new this semester
              </p>
            </div>
            <div class="bg-green-600/20 p-3 rounded-full">
              <i data-feather="book" class="w-6 h-6 text-green-400"></i>
            </div>
          </div>
        </div>

        <!-- Graduation Rate -->
        <div class="bg-gradient-to-br from-amber-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-amber-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Graduation Rate</p>
              <h3 class="text-2xl font-bold text-white mt-1">94%</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="graduation-cap" class="w-3 h-3 mr-1 text-amber-400"></i>
                National rank: #3
              </p>
            </div>
            <div class="bg-amber-600/20 p-3 rounded-full">
              <i data-feather="bar-chart-2" class="w-6 h-6 text-amber-400"></i>
            </div>
          </div>
        </div>
      </div>

      <!-- 📊 Main Dashboard Grid -->
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
        <!-- Enrollment Trends -->
        <div class="lg:col-span-2 bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <div class="flex justify-between items-center mb-6">
            <h2 class="text-xl font-semibold text-white">Enrollment Trends</h2>
            <div class="flex space-x-2">
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Programs</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-blue-600 text-white">Departments</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Demographics</button>
            </div>
          </div>
          <div class="h-64 bg-gray-900/50 rounded-lg border border-gray-700 flex items-center justify-center">
            <!-- Chart would go here -->
            <div class="text-center p-4">
              <i data-feather="trending-up" class="w-12 h-12 text-blue-400 mx-auto mb-2"></i>
              <p class="text-gray-400">Student enrollment visualization</p>
            </div>
          </div>
        </div>

        <!-- Upcoming Academic Events -->
        <div class="bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <div class="flex justify-between items-center mb-6">
            <h2 class="text-xl font-semibold text-white">Upcoming Events</h2>
            <button class="text-blue-400 hover:text-blue-300 text-sm flex items-center">
              View all <i data-feather="chevron-right" class="w-4 h-4 ml-1"></i>
            </button>
          </div>
          <div class="space-y-4">
            <!-- Event 1 -->
            <div class="flex items-start space-x-3 p-3 hover:bg-gray-700/50 rounded-lg transition-colors cursor-pointer">
              <div class="bg-blue-600/10 p-2 rounded-lg">
                <i data-feather="calendar" class="w-5 h-5 text-blue-400"></i>
              </div>
              <div>
                <h3 class="text-sm font-medium text-white">Fall Semester Begins</h3>
                <p class="text-xs text-gray-400 mt-1 flex items-center">
                  <i data-feather="clock" class="w-3 h-3 mr-1"></i>
                  Aug 28, 2023 • 8:00 AM
                </p>
              </div>
            </div>

            <!-- Event 2 -->
            <div class="flex items-start space-x-3 p-3 hover:bg-gray-700/50 rounded-lg transition-colors cursor-pointer">
              <div class="bg-purple-600/10 p-2 rounded-lg">
                <i data-feather="mic" class="w-5 h-5 text-purple-400"></i>
              </div>
              <div>
                <h3 class="text-sm font-medium text-white">Guest Lecture: AI Ethics</h3>
                <p class="text-xs text-gray-400 mt-1 flex items-center">
                  <i data-feather="clock" class="w-3 h-3 mr-1"></i>
                  Sep 5, 2023 • 3:30 PM
                </p>
              </div>
            </div>

            <!-- Event 3 -->
            <div class="flex items-start space-x-3 p-3 hover:bg-gray-700/50 rounded-lg transition-colors cursor-pointer">
              <div class="bg-green-600/10 p-2 rounded-lg">
                <i data-feather="book-open" class="w-5 h-5 text-green-400"></i>
              </div>
              <div>
                <h3 class="text-sm font-medium text-white">Midterm Examinations</h3>
                <p class="text-xs text-gray-400 mt-1 flex items-center">
                  <i data-feather="clock" class="w-3 h-3 mr-1"></i>
                  Oct 16-20, 2023
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 🚀 Quick Access Tiles -->
      <div class="mb-8">
        <h2 class="text-xl font-semibold text-white mb-6">Academic Quick Links</h2>
        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
          <!-- Tile 1 -->
          <a href="#" class="bg-gradient-to-br from-blue-900/50 to-gray-800 hover:from-blue-900/70 rounded-xl p-6 shadow-lg border border-blue-900/30 flex flex-col items-center justify-center transition-all hover:scale-[1.03] group">
            <div class="bg-blue-600/20 p-4 rounded-full mb-3 group-hover:bg-blue-600/30 transition-colors">
              <i data-feather="book" class="w-6 h-6 text-blue-400"></i>
            </div>
            <span class="text-sm font-medium text-white text-center">Course Management</span>
          </a>

          <!-- Tile 2 -->
          <a href="#" class="bg-gradient-to-br from-purple-900/50 to-gray-800 hover:from-purple-900/70 rounded-xl p-6 shadow-lg border border-purple-900/30 flex flex-col items-center justify-center transition-all hover:scale-[1.03] group">
            <div class="bg-purple-600/20 p-4 rounded-full mb-3 group-hover:bg-purple-600/30 transition-colors">
              <i data-feather="user-plus" class="w-6 h-6 text-purple-400"></i>
            </div>
            <span class="text-sm font-medium text-white text-center">Student Enrollment</span>
          </a>

          <!-- Tile 3 -->
          <a href="#" class="bg-gradient-to-br from-green-900/50 to-gray-800 hover:from-green-900/70 rounded-xl p-6 shadow-lg border border-green-900/30 flex flex-col items-center justify-center transition-all hover:scale-[1.03] group">
            <div class="bg-green-600/20 p-4 rounded-full mb-3 group-hover:bg-green-600/30 transition-colors">
              <i data-feather="clipboard" class="w-6 h-6 text-green-400"></i>
            </div>
            <span class="text-sm font-medium text-white text-center">Grade Center</span>
          </a>

          <!-- Tile 4 -->
          <a href="#" class="bg-gradient-to-br from-amber-900/50 to-gray-800 hover:from-amber-900/70 rounded-xl p-6 shadow-lg border border-amber-900/30 flex flex-col items-center justify-center transition-all hover:scale-[1.03] group">
            <div class="bg-amber-600/20 p-4 rounded-full mb-3 group-hover:bg-amber-600/30 transition-colors">
              <i data-feather="dollar-sign" class="w-6 h-6 text-amber-400"></i>
            </div>
            <span class="text-sm font-medium text-white text-center">Financial Aid</span>
          </a>
        </div>
      </div>

      <!-- 📢 Recent Announcements -->
      <div class="bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
        <div class="flex justify-between items-center mb-6">
          <h2 class="text-xl font-semibold text-white">Latest Announcements</h2>
          <button class="text-blue-400 hover:text-blue-300 text-sm flex items-center">
            View all <i data-feather="chevron-right" class="w-4 h-4 ml-1"></i>
          </button>
        </div>
        <div class="space-y-4">
          <!-- Announcement 1 -->
          <div class="p-4 bg-gray-900/50 rounded-lg border border-gray-700 hover:border-blue-500/50 transition-colors cursor-pointer">
            <div class="flex items-start space-x-3">
              <div class="bg-blue-600/10 p-2 rounded-lg">
                <i data-feather="megaphone" class="w-5 h-5 text-blue-400"></i>
              </div>
              <div>
                <h3 class="text-sm font-medium text-white">Campus Renovation Updates</h3>
                <p class="text-xs text-gray-400 mt-1">The Science Building expansion will begin on September 1st. Alternate arrangements have been made for all affected classes.</p>
                <div class="flex items-center mt-2 text-xs text-gray-500">
                  <i data-feather="clock" class="w-3 h-3 mr-1"></i>
                  Posted 2 days ago • By Office of the Registrar
                </div>
              </div>
            </div>
          </div>

          <!-- Announcement 2 -->
          <div class="p-4 bg-gray-900/50 rounded-lg border border-gray-700 hover:border-purple-500/50 transition-colors cursor-pointer">
            <div class="flex items-start space-x-3">
              <div class="bg-purple-600/10 p-2 rounded-lg">
                <i data-feather="award" class="w-5 h-5 text-purple-400"></i>
              </div>
              <div>
                <h3 class="text-sm font-medium text-white">Scholarship Applications Open</h3>
                <p class="text-xs text-gray-400 mt-1">The Dean's Merit Scholarship application window is now open until October 15th. All sophomore students are eligible.</p>
                <div class="flex items-center mt-2 text-xs text-gray-500">
                  <i data-feather="clock" class="w-3 h-3 mr-1"></i>
                  Posted 1 week ago • By Financial Aid Office
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div> --%>
    """
    # TODO: create a more fitting university landing page
  end
end

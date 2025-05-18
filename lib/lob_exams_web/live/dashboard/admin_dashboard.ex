defmodule LobExamsWeb.Live.AdminDashboard do
  use LobExamsWeb, :live_view

  def admin_dashboard(assigns) do
    ~H"""
    <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
      <!-- Welcome Header -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
        <div>
          <h1 class="text-3xl font-bold text-white">Welcome back, <span class="text-indigo-400">{@current_user.username}</span> 👋</h1>
          <p class="text-gray-400 mt-2">Here's what's happening with your system today</p>
        </div>
        <div class="mt-4 md:mt-0 flex space-x-3">
          <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-all shadow-lg hover:shadow-indigo-500/20">
            <i data-feather="plus" class="w-4 h-4 mr-2"></i>
            Quick Action
          </button>
          <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-all border border-gray-700">
            <i data-feather="refresh-cw" class="w-4 h-4 mr-2"></i>
            Refresh
          </button>
        </div>
      </div>

      <!-- 🔥 Key Metrics (Animated Cards) -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <!-- System Health -->
        <div class="bg-gradient-to-br from-green-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-green-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">System Health</p>
              <h3 class="text-2xl font-bold text-white mt-1">Optimal</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="activity" class="w-3 h-3 mr-1 text-green-400"></i>
                All systems operational
              </p>
            </div>
            <div class="bg-green-600/20 p-3 rounded-full">
              <i data-feather="server" class="w-6 h-6 text-green-400"></i>
            </div>
          </div>
        </div>

        <!-- Active Users -->
        <div class="bg-gradient-to-br from-blue-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-blue-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Active Users</p>
              <h3 class="text-2xl font-bold text-white mt-1">2,417</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="users" class="w-3 h-3 mr-1 text-blue-400"></i>
                42 admins online
              </p>
            </div>
            <div class="bg-blue-600/20 p-3 rounded-full">
              <i data-feather="user-check" class="w-6 h-6 text-blue-400"></i>
            </div>
          </div>
        </div>

        <!-- Pending Tasks -->
        <div class="bg-gradient-to-br from-amber-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-amber-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Pending Tasks</p>
              <h3 class="text-2xl font-bold text-white mt-1">18</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="alert-circle" class="w-3 h-3 mr-1 text-amber-400"></i>
                5 high priority
              </p>
            </div>
            <div class="bg-amber-600/20 p-3 rounded-full">
              <i data-feather="clock" class="w-6 h-6 text-amber-400"></i>
            </div>
          </div>
        </div>

        <!-- Storage -->
        <div class="bg-gradient-to-br from-purple-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-purple-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Storage Used</p>
              <h3 class="text-2xl font-bold text-white mt-1">64%</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="database" class="w-3 h-3 mr-1 text-purple-400"></i>
                1.8TB / 2.8TB
              </p>
            </div>
            <div class="bg-purple-600/20 p-3 rounded-full">
              <i data-feather="hard-drive" class="w-6 h-6 text-purple-400"></i>
            </div>
          </div>
        </div>
      </div>

      <!-- 📊 Main Dashboard Grid -->
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
        <!-- Activity Chart -->
        <div class="lg:col-span-2 bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <div class="flex justify-between items-center mb-6">
            <h2 class="text-xl font-semibold text-white">System Activity</h2>
            <div class="flex space-x-2">
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Day</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-indigo-600 text-white">Week</button>
              <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Month</button>
            </div>
          </div>
          <div class="h-64 bg-gray-900/50 rounded-lg border border-gray-700 flex items-center justify-center">
            <!-- Chart would go here -->
            <div class="text-center p-4">
              <i data-feather="bar-chart-2" class="w-12 h-12 text-gray-600 mx-auto mb-2"></i>
              <p class="text-gray-500">User activity visualization</p>
            </div>
          </div>
        </div>

        <!-- Quick Actions -->
        <div class="bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <h2 class="text-xl font-semibold text-white mb-6">Quick Actions</h2>
          <div class="grid grid-cols-2 gap-4">
            <button class="bg-gray-900 hover:bg-gray-700 p-4 rounded-lg flex flex-col items-center transition-colors border border-gray-700">
              <div class="bg-indigo-600/10 p-3 rounded-full mb-2">
                <i data-feather="user-plus" class="w-5 h-5 text-indigo-400"></i>
              </div>
              <span class="text-sm font-medium text-white">Add User</span>
            </button>
            <button class="bg-gray-900 hover:bg-gray-700 p-4 rounded-lg flex flex-col items-center transition-colors border border-gray-700">
              <div class="bg-purple-600/10 p-3 rounded-full mb-2">
                <i data-feather="settings" class="w-5 h-5 text-purple-400"></i>
              </div>
              <span class="text-sm font-medium text-white">Settings</span>
            </button>
            <button class="bg-gray-900 hover:bg-gray-700 p-4 rounded-lg flex flex-col items-center transition-colors border border-gray-700">
              <div class="bg-blue-600/10 p-3 rounded-full mb-2">
                <i data-feather="database" class="w-5 h-5 text-blue-400"></i>
              </div>
              <span class="text-sm font-medium text-white">Backup</span>
            </button>
            <button class="bg-gray-900 hover:bg-gray-700 p-4 rounded-lg flex flex-col items-center transition-colors border border-gray-700">
              <div class="bg-green-600/10 p-3 rounded-full mb-2">
                <i data-feather="shield" class="w-5 h-5 text-green-400"></i>
              </div>
              <span class="text-sm font-medium text-white">Security</span>
            </button>
          </div>
        </div>
      </div>

      <!-- Recent Activity & Notifications -->
      <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
        <!-- Recent Activity -->
        <div class="lg:col-span-2 bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <h2 class="text-xl font-semibold text-white mb-6">Recent Activity</h2>
          <div class="space-y-4">
            <!-- Activity Item 1 -->
            <div class="flex items-start space-x-4 p-3 hover:bg-gray-700/50 rounded-lg transition-colors">
              <div class="bg-indigo-600/10 p-2 rounded-full">
                <i data-feather="user" class="w-5 h-5 text-indigo-400"></i>
              </div>
              <div>
                <p class="text-sm font-medium text-white">New admin user created</p>
                <p class="text-xs text-gray-400 mt-1">Sarah Johnson • 15 min ago</p>
              </div>
              <span class="ml-auto text-xs px-2 py-1 bg-gray-900 rounded-full text-gray-300">User</span>
            </div>

            <!-- Activity Item 2 -->
            <div class="flex items-start space-x-4 p-3 hover:bg-gray-700/50 rounded-lg transition-colors">
              <div class="bg-green-600/10 p-2 rounded-full">
                <i data-feather="database" class="w-5 h-5 text-green-400"></i>
              </div>
              <div>
                <p class="text-sm font-medium text-white">Nightly backup completed</p>
                <p class="text-xs text-gray-400 mt-1">System • 2 hours ago</p>
              </div>
              <span class="ml-auto text-xs px-2 py-1 bg-gray-900 rounded-full text-gray-300">System</span>
            </div>

            <!-- Activity Item 3 -->
            <div class="flex items-start space-x-4 p-3 hover:bg-gray-700/50 rounded-lg transition-colors">
              <div class="bg-amber-600/10 p-2 rounded-full">
                <i data-feather="alert-triangle" class="w-5 h-5 text-amber-400"></i>
              </div>
              <div>
                <p class="text-sm font-medium text-white">Security alert detected</p>
                <p class="text-xs text-gray-400 mt-1">Firewall • 4 hours ago</p>
              </div>
              <span class="ml-auto text-xs px-2 py-1 bg-gray-900 rounded-full text-gray-300">Security</span>
            </div>
          </div>
          <button class="text-indigo-400 hover:text-indigo-300 text-sm flex items-center mt-4">
            View all activity <i data-feather="chevron-right" class="w-4 h-4 ml-1"></i>
          </button>
        </div>

        <!-- Notifications -->
        <div class="bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
          <div class="flex justify-between items-center mb-6">
            <h2 class="text-xl font-semibold text-white">Notifications</h2>
            <span class="text-xs px-2 py-1 bg-indigo-900/30 rounded-full text-indigo-400">3 New</span>
          </div>
          <div class="space-y-4">
            <!-- Notification 1 -->
            <div class="p-3 bg-gray-900/50 rounded-lg border border-gray-700">
              <div class="flex items-start space-x-3">
                <div class="bg-indigo-600/10 p-2 rounded-full">
                  <i data-feather="alert-circle" class="w-5 h-5 text-indigo-400"></i>
                </div>
                <div>
                  <p class="text-sm font-medium text-white">System update available</p>
                  <p class="text-xs text-gray-400 mt-1">Version 2.5.3 ready to install</p>
                </div>
              </div>
            </div>

            <!-- Notification 2 -->
            <div class="p-3 bg-gray-900/50 rounded-lg border border-gray-700">
              <div class="flex items-start space-x-3">
                <div class="bg-green-600/10 p-2 rounded-full">
                  <i data-feather="check-circle" class="w-5 h-5 text-green-400"></i>
                </div>
                <div>
                  <p class="text-sm font-medium text-white">Backup successful</p>
                  <p class="text-xs text-gray-400 mt-1">All databases secured</p>
                </div>
              </div>
            </div>

            <!-- Notification 3 -->
            <div class="p-3 bg-gray-900/50 rounded-lg border border-gray-700">
              <div class="flex items-start space-x-3">
                <div class="bg-red-600/10 p-2 rounded-full">
                  <i data-feather="bell" class="w-5 h-5 text-red-400"></i>
                </div>
                <div>
                  <p class="text-sm font-medium text-white">Unauthorized login attempt</p>
                  <p class="text-xs text-gray-400 mt-1">From IP: 192.168.1.45</p>
                </div>
              </div>
            </div>
          </div>
          <button class="text-gray-400 hover:text-white text-sm flex items-center justify-center w-full mt-4">
            Mark all as read
          </button>
        </div>
      </div>

      <!-- Recent Users -->
      <div class="bg-gray-800 rounded-xl shadow-lg p-6 border border-gray-700">
        <div class="flex justify-between items-center mb-6">
          <h2 class="text-xl font-semibold text-white">Recently Active Users</h2>
          <button class="text-indigo-400 hover:text-indigo-300 text-sm flex items-center">
            View all <i data-feather="chevron-right" class="w-4 h-4 ml-1"></i>
          </button>
        </div>
        <div class="grid grid-cols-2 md:grid-cols-5 gap-4">
          <!-- User 1 -->
          <div class="flex flex-col items-center">
            <div class="relative mb-2">
              <img src="https://randomuser.me/api/portraits/women/44.jpg" class="w-12 h-12 rounded-full border-2 border-indigo-500">
              <span class="absolute bottom-0 right-0 w-3 h-3 bg-green-500 rounded-full border-2 border-gray-800"></span>
            </div>
            <span class="text-sm font-medium text-white">Sarah J.</span>
            <span class="text-xs text-gray-400">Admin</span>
          </div>

          <!-- User 2 -->
          <div class="flex flex-col items-center">
            <div class="relative mb-2">
              <img src="https://randomuser.me/api/portraits/men/32.jpg" class="w-12 h-12 rounded-full border-2 border-gray-700">
              <span class="absolute bottom-0 right-0 w-3 h-3 bg-green-500 rounded-full border-2 border-gray-800"></span>
            </div>
            <span class="text-sm font-medium text-white">Michael T.</span>
            <span class="text-xs text-gray-400">Moderator</span>
          </div>

          <!-- User 3 -->
          <div class="flex flex-col items-center">
            <div class="relative mb-2">
              <img src="https://randomuser.me/api/portraits/women/68.jpg" class="w-12 h-12 rounded-full border-2 border-gray-700">
              <span class="absolute bottom-0 right-0 w-3 h-3 bg-gray-500 rounded-full border-2 border-gray-800"></span>
            </div>
            <span class="text-sm font-medium text-white">Lisa M.</span>
            <span class="text-xs text-gray-400">Editor</span>
          </div>

          <!-- User 4 -->
          <div class="flex flex-col items-center">
            <div class="relative mb-2">
              <img src="https://randomuser.me/api/portraits/men/75.jpg" class="w-12 h-12 rounded-full border-2 border-gray-700">
              <span class="absolute bottom-0 right-0 w-3 h-3 bg-green-500 rounded-full border-2 border-gray-800"></span>
            </div>
            <span class="text-sm font-medium text-white">David K.</span>
            <span class="text-xs text-gray-400">Analyst</span>
          </div>

          <!-- User 5 -->
          <div class="flex flex-col items-center">
            <div class="relative mb-2">
              <img src="https://randomuser.me/api/portraits/women/25.jpg" class="w-12 h-12 rounded-full border-2 border-gray-700">
              <span class="absolute bottom-0 right-0 w-3 h-3 bg-gray-500 rounded-full border-2 border-gray-800"></span>
            </div>
            <span class="text-sm font-medium text-white">Emma R.</span>
            <span class="text-xs text-gray-400">Viewer</span>
          </div>
        </div>
      </div>
    </div>
    """
  end
end

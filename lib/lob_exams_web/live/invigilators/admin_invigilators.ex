defmodule LobExamsWeb.Live.Invigilators do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket
    |> assign(page_title: "Invigilators")
    |> assign(invigilators: %{})}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <!-- Header -->
    <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
      <div>
        <h1 class="text-3xl font-bold text-white">Invigilators</h1>
        <p class="text-gray-400 mt-2">Manage exam supervisors and their assignments</p>
      </div>
      <div class="mt-4 md:mt-0 flex space-x-3">
        <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors">
          <i data-feather="plus" class="w-4 h-4 mr-2"></i>
          Add Invigilator
        </button>
        <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors">
          <i data-feather="filter" class="w-4 h-4 mr-2"></i>
          Filters
        </button>
      </div>
    </div>

    <!-- Stats Cards -->
    <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
      <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
        <div class="flex items-center justify-between">
          <div>
            <p class="text-gray-400">Total Invigilators</p>
            <h3 class="text-2xl font-bold text-white mt-2">24</h3>
          </div>
          <div class="bg-indigo-600/20 p-3 rounded-full">
            <i data-feather="users" class="w-6 h-6 text-indigo-400"></i>
          </div>
        </div>
      </div>
      <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
        <div class="flex items-center justify-between">
          <div>
            <p class="text-gray-400">Available Today</p>
            <h3 class="text-2xl font-bold text-white mt-2">18</h3>
          </div>
          <div class="bg-green-600/20 p-3 rounded-full">
            <i data-feather="user-check" class="w-6 h-6 text-green-400"></i>
          </div>
        </div>
      </div>
      <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
        <div class="flex items-center justify-between">
          <div>
            <p class="text-gray-400">Assigned This Week</p>
            <h3 class="text-2xl font-bold text-white mt-2">56</h3>
          </div>
          <div class="bg-yellow-600/20 p-3 rounded-full">
            <i data-feather="clipboard" class="w-6 h-6 text-yellow-400"></i>
          </div>
        </div>
      </div>
    </div>

    <!-- Invigilators Section -->
    <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
      <!-- Tabs -->
      <div class="border-b border-gray-700">
        <div class="flex">
          <button class="px-6 py-4 text-sm font-medium text-white border-b-2 border-indigo-500">All Invigilators</button>
          <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">On Duty</button>
          <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Available</button>
          <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Leave</button>
        </div>
      </div>

      <!-- Invigilators List -->
      <div class="divide-y divide-gray-700 custom-scrollbar" style="max-height: 500px; overflow-y: auto;">
        <!-- Invigilator Card 1 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-indigo-600/10 p-3 rounded-lg">
                <i data-feather="user" class="w-6 h-6 text-indigo-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">Dr. Sarah Johnson</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="mail" class="w-4 h-4 mr-1"></i>
                  <span>s.johnson@university.edu</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="phone" class="w-4 h-4 mr-1"></i>
                  <span>+1 (555) 123-4567</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-green-600/20 text-green-400">Available</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-gray-700 text-gray-300">3 Exams</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Invigilator Card 2 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-purple-600/10 p-3 rounded-lg">
                <i data-feather="user" class="w-6 h-6 text-purple-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">Prof. Michael Chen</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="mail" class="w-4 h-4 mr-1"></i>
                  <span>m.chen@university.edu</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="phone" class="w-4 h-4 mr-1"></i>
                  <span>+1 (555) 987-6543</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-blue-600/20 text-blue-400">On Duty</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-gray-700 text-gray-300">5 Exams</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Invigilator Card 3 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-blue-600/10 p-3 rounded-lg">
                <i data-feather="user" class="w-6 h-6 text-blue-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">Dr. Emily Rodriguez</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="mail" class="w-4 h-4 mr-1"></i>
                  <span>e.rodriguez@university.edu</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="phone" class="w-4 h-4 mr-1"></i>
                  <span>+1 (555) 456-7890</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-yellow-600/20 text-yellow-400">On Leave</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-gray-700 text-gray-300">0 Exams</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Invigilator Card 4 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-green-600/10 p-3 rounded-lg">
                <i data-feather="user" class="w-6 h-6 text-green-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">Prof. David Wilson</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="mail" class="w-4 h-4 mr-1"></i>
                  <span>d.wilson@university.edu</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="phone" class="w-4 h-4 mr-1"></i>
                  <span>+1 (555) 234-5678</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-green-600/20 text-green-400">Available</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-gray-700 text-gray-300">2 Exams</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Invigilator Card 5 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-red-600/10 p-3 rounded-lg">
                <i data-feather="user" class="w-6 h-6 text-red-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">Dr. Lisa Park</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="mail" class="w-4 h-4 mr-1"></i>
                  <span>l.park@university.edu</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="phone" class="w-4 h-4 mr-1"></i>
                  <span>+1 (555) 345-6789</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-blue-600/20 text-blue-400">On Duty</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-gray-700 text-gray-300">4 Exams</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end

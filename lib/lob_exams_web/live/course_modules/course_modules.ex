defmodule LobExamsWeb.Live.CourseModules do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket
    |> assign(page_title: "Course Modules")}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <!-- Header -->
    <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
      <div>
        <h1 class="text-3xl font-bold text-white">Course Modules</h1>
        <p class="text-gray-400 mt-2">Manage all academic modules and their details</p>
      </div>
      <div class="mt-4 md:mt-0 flex space-x-3">
        <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors">
          <i data-feather="plus" class="w-4 h-4 mr-2"></i>
          Add Module
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
            <p class="text-gray-400">Total Modules</p>
            <h3 class="text-2xl font-bold text-white mt-2">68</h3>
          </div>
          <div class="bg-indigo-600/20 p-3 rounded-full">
            <i data-feather="book" class="w-6 h-6 text-indigo-400"></i>
          </div>
        </div>
      </div>
      <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
        <div class="flex items-center justify-between">
          <div>
            <p class="text-gray-400">Active This Semester</p>
            <h3 class="text-2xl font-bold text-white mt-2">42</h3>
          </div>
          <div class="bg-green-600/20 p-3 rounded-full">
            <i data-feather="check-circle" class="w-6 h-6 text-green-400"></i>
          </div>
        </div>
      </div>
      <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
        <div class="flex items-center justify-between">
          <div>
            <p class="text-gray-400">Core Modules</p>
            <h3 class="text-2xl font-bold text-white mt-2">24</h3>
          </div>
          <div class="bg-yellow-600/20 p-3 rounded-full">
            <i data-feather="star" class="w-6 h-6 text-yellow-400"></i>
          </div>
        </div>
      </div>
    </div>

    <!-- Modules Section -->
    <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden">
      <!-- Tabs -->
      <div class="border-b border-gray-700">
        <div class="flex">
          <button class="px-6 py-4 text-sm font-medium text-white border-b-2 border-indigo-500">All Modules</button>
          <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Active</button>
          <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Electives</button>
          <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Archived</button>
        </div>
      </div>

      <!-- Modules List -->
      <div class="divide-y divide-gray-700 custom-scrollbar" style="max-height: 500px; overflow-y: auto;">
        <!-- Module Card 1 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-indigo-600/10 p-3 rounded-lg">
                <i data-feather="book" class="w-6 h-6 text-indigo-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">MATH-401: Advanced Calculus</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="user" class="w-4 h-4 mr-1"></i>
                  <span>Dr. Sarah Johnson</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="clock" class="w-4 h-4 mr-1"></i>
                  <span>15 Credits • Semester 1</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-green-600/20 text-green-400">Active</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-indigo-600/20 text-indigo-400">Core</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Module Card 2 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-purple-600/10 p-3 rounded-lg">
                <i data-feather="cpu" class="w-6 h-6 text-purple-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">CS-305: Machine Learning</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="user" class="w-4 h-4 mr-1"></i>
                  <span>Prof. Michael Chen</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="clock" class="w-4 h-4 mr-1"></i>
                  <span>20 Credits • Semester 2</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-green-600/20 text-green-400">Active</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-yellow-600/20 text-yellow-400">Elective</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Module Card 3 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-blue-600/10 p-3 rounded-lg">
                <i data-feather="globe" class="w-6 h-6 text-blue-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">HIST-210: World Civilizations</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="user" class="w-4 h-4 mr-1"></i>
                  <span>Dr. Emily Rodriguez</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="clock" class="w-4 h-4 mr-1"></i>
                  <span>10 Credits • Semester 1</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-green-600/20 text-green-400">Active</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-indigo-600/20 text-indigo-400">Core</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Module Card 4 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-green-600/10 p-3 rounded-lg">
                <i data-feather="dna" class="w-6 h-6 text-green-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">BIO-450: Genetic Engineering</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="user" class="w-4 h-4 mr-1"></i>
                  <span>Prof. David Wilson</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="clock" class="w-4 h-4 mr-1"></i>
                  <span>15 Credits • Semester 2</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-gray-600/20 text-gray-400">Archived</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-yellow-600/20 text-yellow-400">Elective</span>
              <button class="text-gray-400 hover:text-white">
                <i data-feather="more-vertical" class="w-5 h-5"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Module Card 5 -->
        <div class="exam-card p-6 hover:bg-gray-700/50 transition-all duration-200 cursor-pointer">
          <div class="flex flex-col md:flex-row md:items-center justify-between">
            <div class="flex items-start space-x-4">
              <div class="bg-red-600/10 p-3 rounded-lg">
                <i data-feather="flask" class="w-6 h-6 text-red-400"></i>
              </div>
              <div>
                <h3 class="text-lg font-semibold text-white">CHEM-320: Organic Chemistry</h3>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="user" class="w-4 h-4 mr-1"></i>
                  <span>Dr. Lisa Park</span>
                </div>
                <div class="flex items-center mt-1 text-sm text-gray-400">
                  <i data-feather="clock" class="w-4 h-4 mr-1"></i>
                  <span>20 Credits • Semester 1</span>
                </div>
              </div>
            </div>
            <div class="mt-4 md:mt-0 flex items-center space-x-3">
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-green-600/20 text-green-400">Active</span>
              <span class="px-3 py-1 rounded-full text-sm font-medium bg-indigo-600/20 text-indigo-400">Core</span>
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

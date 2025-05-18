defmodule LobExamsWeb.Live.StudentsCourseModules do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Course Modules")}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
      <!-- Header -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
        <div>
          <h1 class="text-3xl font-bold text-white">Course Modules</h1>
          <p class="text-gray-400 mt-2">View and select modules for your program</p>
        </div>
        <div class="mt-4 md:mt-0 flex space-x-3">
          <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
            </svg>
            Submit Selections
          </button>
        </div>
      </div>

      <!-- Stats Cards -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Required Credits</p>
              <h3 class="text-2xl font-bold text-white mt-2">60</h3>
            </div>
            <div class="bg-indigo-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
          </div>
        </div>
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Selected Credits</p>
              <h3 class="text-2xl font-bold text-white mt-2">45</h3>
            </div>
            <div class="bg-yellow-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
          </div>
        </div>
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Electives Available</p>
              <h3 class="text-2xl font-bold text-white mt-2">28</h3>
            </div>
            <div class="bg-green-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
              </svg>
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
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Core Modules</button>
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Electives</button>
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Selected</button>
          </div>
        </div>

        <!-- Modules List -->
        <div class="divide-y divide-gray-700">
          <!-- Core Module Card -->
          <div class="p-6 hover:bg-gray-700/50 transition-colors">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-indigo-600/10 p-3 rounded-lg">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z" />
                  </svg>
                </div>
                <div class="flex-1">
                  <div class="flex items-center justify-between">
                    <h3 class="text-lg font-semibold text-white">MATH-401: Advanced Calculus</h3>
                    <span class="px-2 py-1 rounded-full text-xs font-medium bg-indigo-600/20 text-indigo-400">Core</span>
                  </div>
                  <p class="text-gray-400 mt-1 text-sm">Differential equations, multivariable calculus, and analytical methods</p>
                  <div class="flex items-center mt-2 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    <span class="mr-4">Semester 1</span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
                    </svg>
                    <span>15 Credits</span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 ml-14 md:ml-0">
                <label class="inline-flex items-center">
                  <input type="checkbox" checked disabled class="h-4 w-4 text-indigo-600 border-gray-600 bg-gray-700 focus:ring-indigo-500">
                  <span class="ml-2 text-gray-300">Required</span>
                </label>
              </div>
            </div>
          </div>

          <!-- Elective Module Card -->
          <div class="p-6 hover:bg-gray-700/50 transition-colors">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-purple-600/10 p-3 rounded-lg">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-purple-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                  </svg>
                </div>
                <div class="flex-1">
                  <div class="flex items-center justify-between">
                    <h3 class="text-lg font-semibold text-white">CS-305: Machine Learning</h3>
                    <span class="px-2 py-1 rounded-full text-xs font-medium bg-purple-600/20 text-purple-400">Elective</span>
                  </div>
                  <p class="text-gray-400 mt-1 text-sm">Introduction to supervised and unsupervised learning algorithms</p>
                  <div class="flex items-center mt-2 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    <span class="mr-4">Semester 2</span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
                    </svg>
                    <span>20 Credits</span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 ml-14 md:ml-0">
                <label class="inline-flex items-center">
                  <input type="checkbox" class="h-4 w-4 text-indigo-600 border-gray-600 bg-gray-700 focus:ring-indigo-500">
                  <span class="ml-2 text-gray-300">Select</span>
                </label>
              </div>
            </div>
          </div>

          <!-- Selected Module Card -->
          <div class="p-6 bg-gray-700/30 transition-colors">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-green-600/10 p-3 rounded-lg">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
                  </svg>
                </div>
                <div class="flex-1">
                  <div class="flex items-center justify-between">
                    <h3 class="text-lg font-semibold text-white">HIST-210: World Civilizations</h3>
                    <span class="px-2 py-1 rounded-full text-xs font-medium bg-green-600/20 text-green-400">Selected</span>
                  </div>
                  <p class="text-gray-400 mt-1 text-sm">Comparative study of major world civilizations from ancient to modern times</p>
                  <div class="flex items-center mt-2 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                    </svg>
                    <span class="mr-4">Semester 1</span>
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
                    </svg>
                    <span>10 Credits</span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 ml-14 md:ml-0">
                <label class="inline-flex items-center">
                  <input type="checkbox" checked class="h-4 w-4 text-indigo-600 border-gray-600 bg-gray-700 focus:ring-indigo-500">
                  <span class="ml-2 text-gray-300">Selected</span>
                </label>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end

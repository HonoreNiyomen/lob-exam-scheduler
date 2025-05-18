defmodule LobExamsWeb.Live.StudentInvigilators do
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
    <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
      <!-- Header -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
        <div>
          <h1 class="text-3xl font-bold text-white">Exam Invigilators</h1>
          <p class="text-gray-400 mt-2">View your exam supervisors and their contact information</p>
        </div>
        <div class="mt-4 md:mt-0 flex space-x-3">
          <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-colors">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
            </svg>
            Contact All
          </button>
        </div>
      </div>

      <!-- Stats Cards -->
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Total Invigilators</p>
              <h3 class="text-2xl font-bold text-white mt-2">4</h3>
            </div>
            <div class="bg-indigo-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
              </svg>
            </div>
          </div>
        </div>
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Primary Contact</p>
              <h3 class="text-2xl font-bold text-white mt-2">Dr. Smith</h3>
            </div>
            <div class="bg-green-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-green-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
              </svg>
            </div>
          </div>
        </div>
        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Response Time</p>
              <h3 class="text-2xl font-bold text-white mt-2">24-48h</h3>
            </div>
            <div class="bg-yellow-600/20 p-3 rounded-full">
              <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-yellow-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
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
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Exam Specific</button>
            <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Department</button>
          </div>
        </div>

        <!-- Invigilators List -->
        <div class="divide-y divide-gray-700">
          <!-- Invigilator Card 1 -->
          <div class="p-6 hover:bg-gray-700/50 transition-colors cursor-pointer">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-indigo-600/10 p-3 rounded-lg">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-indigo-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-white">Dr. Sarah Johnson</h3>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                    </svg>
                    <span>s.johnson@university.edu</span>
                  </div>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                    </svg>
                    <span>+1 (555) 123-4567</span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 flex items-center space-x-3">
                <span class="px-3 py-1 rounded-full text-sm font-medium bg-indigo-600/20 text-indigo-400">Math Dept</span>
                <button class="text-gray-400 hover:text-white">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                  </svg>
                </button>
              </div>
            </div>
          </div>

          <!-- Invigilator Card 2 -->
          <div class="p-6 hover:bg-gray-700/50 transition-colors cursor-pointer">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-purple-600/10 p-3 rounded-lg">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-purple-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-white">Prof. Michael Chen</h3>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                    </svg>
                    <span>m.chen@university.edu</span>
                  </div>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                    </svg>
                    <span>+1 (555) 987-6543</span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 flex items-center space-x-3">
                <span class="px-3 py-1 rounded-full text-sm font-medium bg-purple-600/20 text-purple-400">CS Dept</span>
                <button class="text-gray-400 hover:text-white">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                  </svg>
                </button>
              </div>
            </div>
          </div>

          <!-- Invigilator Card 3 -->
          <div class="p-6 hover:bg-gray-700/50 transition-colors cursor-pointer">
            <div class="flex flex-col md:flex-row md:items-center justify-between">
              <div class="flex items-start space-x-4">
                <div class="bg-blue-600/10 p-3 rounded-lg">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-blue-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5.121 17.804A13.937 13.937 0 0112 16c2.5 0 4.847.655 6.879 1.804M15 10a3 3 0 11-6 0 3 3 0 016 0zm6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                </div>
                <div>
                  <h3 class="text-lg font-semibold text-white">Dr. Emily Rodriguez</h3>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                    </svg>
                    <span>e.rodriguez@university.edu</span>
                  </div>
                  <div class="flex items-center mt-1 text-sm text-gray-400">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-4 w-4 mr-1" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                    </svg>
                    <span>+1 (555) 456-7890</span>
                  </div>
                </div>
              </div>
              <div class="mt-4 md:mt-0 flex items-center space-x-3">
                <span class="px-3 py-1 rounded-full text-sm font-medium bg-blue-600/20 text-blue-400">History Dept</span>
                <button class="text-gray-400 hover:text-white">
                  <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                  </svg>
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

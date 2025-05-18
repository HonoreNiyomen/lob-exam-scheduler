defmodule LobExamsWeb.Live.Insititutions do
  use LobExamsWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :page_title, "Manage Insititutions")}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <!-- Main Content -->
    <div class="container mx-auto px-4 py-8">
      <!-- Header with Admin Controls -->
      <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
        <div class="flex items-center space-x-4">
          <div class="bg-indigo-600/20 p-3 rounded-xl">
            <i data-feather="university" class="w-8 h-8 text-indigo-400"></i>
          </div>
          <div>
            <h1 class="text-3xl font-bold text-white">Institution Management</h1>
            <p class="text-gray-400 mt-1">Manage universities, colleges & educational partners</p>
          </div>
        </div>
        <div class="mt-4 md:mt-0 flex space-x-3">
          <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-all shadow-lg hover:shadow-indigo-500/20">
            <i data-feather="plus" class="w-4 h-4 mr-2"></i>
            Add Institution
          </button>
          <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-all border border-gray-700">
            <i data-feather="upload" class="w-4 h-4 mr-2"></i>
            Bulk Import
          </button>
        </div>
      </div>

      <!-- 🔥 Stats Cards (Animated) -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
        <!-- Total Institutions -->
        <div class="bg-gradient-to-br from-indigo-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-indigo-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Total Institutions</p>
              <h3 class="text-2xl font-bold text-white mt-1">128</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="trending-up" class="w-3 h-3 mr-1 text-green-400"></i>
                +8% this year
              </p>
            </div>
            <div class="bg-indigo-600/20 p-3 rounded-full">
              <i data-feather="home" class="w-6 h-6 text-indigo-400"></i>
            </div>
          </div>
        </div>

        <!-- Active Partners -->
        <div class="bg-gradient-to-br from-purple-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-purple-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Active Partners</p>
              <h3 class="text-2xl font-bold text-white mt-1">94</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="check-circle" class="w-3 h-3 mr-1 text-blue-400"></i>
                73% active rate
              </p>
            </div>
            <div class="bg-purple-600/20 p-3 rounded-full">
              <i data-feather="shield" class="w-6 h-6 text-purple-400"></i>
            </div>
          </div>
        </div>

        <!-- Countries -->
        <div class="bg-gradient-to-br from-blue-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-blue-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Countries</p>
              <h3 class="text-2xl font-bold text-white mt-1">24</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="globe" class="w-3 h-3 mr-1 text-amber-400"></i>
                Global network
              </p>
            </div>
            <div class="bg-blue-600/20 p-3 rounded-full">
              <i data-feather="map" class="w-6 h-6 text-blue-400"></i>
            </div>
          </div>
        </div>

        <!-- Pending Requests -->
        <div class="bg-gradient-to-br from-amber-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-amber-900/30 hover:scale-[1.02] transition-transform">
          <div class="flex items-center justify-between">
            <div>
              <p class="text-gray-400">Pending Requests</p>
              <h3 class="text-2xl font-bold text-white mt-1">16</h3>
              <p class="text-xs text-gray-400 mt-2 flex items-center">
                <i data-feather="alert-circle" class="w-3 h-3 mr-1 text-red-400"></i>
                Requires review
              </p>
            </div>
            <div class="bg-amber-600/20 p-3 rounded-full">
              <i data-feather="clock" class="w-6 h-6 text-amber-400"></i>
            </div>
          </div>
        </div>
      </div>

      <!-- 📊 Institution Distribution Map (Placeholder) -->
      <div class="bg-gray-800 rounded-xl shadow-lg p-6 mb-8 border border-gray-700">
        <div class="flex justify-between items-center mb-6">
          <h2 class="text-xl font-semibold text-white">Global Institution Network</h2>
          <div class="flex space-x-2">
            <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Regions</button>
            <button class="px-3 py-1 text-xs rounded-lg bg-indigo-600 text-white">Countries</button>
            <button class="px-3 py-1 text-xs rounded-lg bg-gray-700 text-gray-300 hover:bg-gray-600">Cities</button>
          </div>
        </div>
        <div class="h-80 bg-gray-900/50 rounded-lg border border-gray-700 flex items-center justify-center">
          <!-- Placeholder for world map (would be dynamic in real app) -->
          <div class="text-center p-4">
            <i data-feather="map" class="w-16 h-16 text-gray-600 mx-auto mb-3"></i>
            <p class="text-gray-500">Interactive institution location map</p>
            <p class="text-xs text-gray-600 mt-1">(Shows global distribution of universities)</p>
          </div>
        </div>
      </div>

      <!-- 🏛️ Institutions Table -->
      <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden border border-gray-700">
        <!-- Table Header with Search & Filters -->
        <div class="px-6 py-4 border-b border-gray-700 flex flex-col md:flex-row justify-between items-start md:items-center">
          <h2 class="text-lg font-semibold text-white mb-2 md:mb-0">All Registered Institutions</h2>
          <div class="flex space-x-3">
            <div class="relative">
              <i data-feather="search" class="absolute left-3 top-1/2 transform -translate-y-1/2 w-4 h-4 text-gray-500"></i>
              <input type="text" placeholder="Search institutions..." class="bg-gray-900 text-sm rounded-lg pl-10 pr-4 py-2 text-white focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-transparent" style="min-width: 200px;">
            </div>
            <button class="bg-gray-700 hover:bg-gray-600 text-white px-3 py-2 rounded-lg flex items-center text-sm">
              <i data-feather="filter" class="w-4 h-4 mr-1"></i>
              Filters
            </button>
          </div>
        </div>

        <!-- Table Content -->
        <div class="overflow-x-auto">
          <table class="w-full">
            <thead class="bg-gray-900 text-gray-400 text-xs uppercase">
              <tr>
                <th class="px-6 py-3 text-left">Institution</th>
                <th class="px-6 py-3 text-left">Type</th>
                <th class="px-6 py-3 text-left">Location</th>
                <th class="px-6 py-3 text-left">Admin Contact</th>
                <th class="px-6 py-3 text-right">Students</th>
                <th class="px-6 py-3 text-right">Status</th>
                <th class="px-6 py-3 text-right">Actions</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-gray-700">
              <!-- Institution 1 -->
              <tr class="hover:bg-gray-700/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="flex items-center">
                    <div class="bg-indigo-600/10 p-2 rounded-lg mr-3">
                      <i data-feather="university" class="w-5 h-5 text-indigo-400"></i>
                    </div>
                    <div>
                      <div class="text-sm font-medium text-white">Stanford University</div>
                      <div class="text-xs text-gray-400">ID: STAN-001</div>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">University</td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm text-white">California, USA</div>
                  <div class="text-xs text-gray-400">3 campuses</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">admin@stanford.edu</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">17,246</td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <span class="px-2 py-1 rounded-full text-xs font-medium bg-green-900/30 text-green-400">Active</span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <button class="text-gray-400 hover:text-indigo-400 p-1">
                    <i data-feather="edit" class="w-4 h-4"></i>
                  </button>
                  <button class="text-gray-400 hover:text-red-400 p-1 ml-2">
                    <i data-feather="trash-2" class="w-4 h-4"></i>
                  </button>
                </td>
              </tr>

              <!-- Institution 2 -->
              <tr class="hover:bg-gray-700/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="flex items-center">
                    <div class="bg-purple-600/10 p-2 rounded-lg mr-3">
                      <i data-feather="book" class="w-5 h-5 text-purple-400"></i>
                    </div>
                    <div>
                      <div class="text-sm font-medium text-white">Cambridge College</div>
                      <div class="text-xs text-gray-400">ID: CAM-0042</div>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">College</td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm text-white">Cambridge, UK</div>
                  <div class="text-xs text-gray-400">1 campus</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">registrar@cambridge.edu</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">9,512</td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <span class="px-2 py-1 rounded-full text-xs font-medium bg-green-900/30 text-green-400">Active</span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <button class="text-gray-400 hover:text-indigo-400 p-1">
                    <i data-feather="edit" class="w-4 h-4"></i>
                  </button>
                  <button class="text-gray-400 hover:text-red-400 p-1 ml-2">
                    <i data-feather="trash-2" class="w-4 h-4"></i>
                  </button>
                </td>
              </tr>

              <!-- Institution 3 -->
              <tr class="hover:bg-gray-700/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="flex items-center">
                    <div class="bg-blue-600/10 p-2 rounded-lg mr-3">
                      <i data-feather="award" class="w-5 h-5 text-blue-400"></i>
                    </div>
                    <div>
                      <div class="text-sm font-medium text-white">Tokyo Institute of Tech</div>
                      <div class="text-xs text-gray-400">ID: TIT-007</div>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Technical</td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm text-white">Tokyo, Japan</div>
                  <div class="text-xs text-gray-400">2 campuses</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">admin@tokyotech.jp</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">6,843</td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <span class="px-2 py-1 rounded-full text-xs font-medium bg-green-900/30 text-green-400">Active</span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <button class="text-gray-400 hover:text-indigo-400 p-1">
                    <i data-feather="edit" class="w-4 h-4"></i>
                  </button>
                  <button class="text-gray-400 hover:text-red-400 p-1 ml-2">
                    <i data-feather="trash-2" class="w-4 h-4"></i>
                  </button>
                </td>
              </tr>

              <!-- Institution 4 (Pending) -->
              <tr class="hover:bg-gray-700/50 transition-colors">
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="flex items-center">
                    <div class="bg-amber-600/10 p-2 rounded-lg mr-3">
                      <i data-feather="clock" class="w-5 h-5 text-amber-400"></i>
                    </div>
                    <div>
                      <div class="text-sm font-medium text-white">Berlin Business School</div>
                      <div class="text-xs text-gray-400">ID: BBS-033</div>
                    </div>
                  </div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">Business</td>
                <td class="px-6 py-4 whitespace-nowrap">
                  <div class="text-sm text-white">Berlin, Germany</div>
                  <div class="text-xs text-gray-400">1 campus</div>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-400">contact@berlinbs.edu</td>
                <td class="px-6 py-4 whitespace-nowrap text-sm text-white text-right">-</td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <span class="px-2 py-1 rounded-full text-xs font-medium bg-amber-900/30 text-amber-400">Pending</span>
                </td>
                <td class="px-6 py-4 whitespace-nowrap text-right">
                  <button class="text-gray-400 hover:text-indigo-400 p-1">
                    <i data-feather="check" class="w-4 h-4"></i>
                  </button>
                  <button class="text-gray-400 hover:text-red-400 p-1 ml-2">
                    <i data-feather="x" class="w-4 h-4"></i>
                  </button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <!-- Pagination -->
        <div class="px-6 py-4 border-t border-gray-700 flex items-center justify-between">
          <div class="text-sm text-gray-400">
            Showing <span class="font-medium text-white">1</span> to <span class="font-medium text-white">4</span> of <span class="font-medium text-white">128</span> institutions
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
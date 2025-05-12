defmodule LobExamsWeb.Layouts.AdminTopNav do
      alias Postgrex.Notifications
      alias Expo.Messages
  use LobExamsWeb, :html


  def admin_top_nav(assigns) do
    assigns = assign_new(assigns, :current_page, fn -> "dashboard" end)
    ~H"""

    <!-- Top Navigation -->
    <header class="bg-gray-800 border-b border-gray-700 p-4 flex items-center justify-between">
      <!-- Mobile menu button -->
      <div class="relative md:hidden">
        <button type="button" aria-label="Toggle menu"
                class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-gray-700 focus:outline-none"
                onclick="document.getElementById('mobile-menu').classList.toggle('hidden')">
          <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
              d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </button>
      </div>

        <div class="hidden md:flex md:flex-col p-1 border-b border-gray-700">
          <h1 class="text-xl font-bold text-indigo-400">LOB Flow</h1>
          <p class="text-xs text-gray-400">Exam Scheduling Platform</p>
        </div>

      <h2 class="text-xl font-semibold">Dashboard</h2>

      <div class="flex items-center space-x-4">
        <div class="hidden md:flex relative inline-flex items-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-blue-700 focus:outline-none">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
          </svg>
          <span class="absolute top-0 right-0 h-2 w-2 rounded-full bg-green-500"></span>
        </div>

        <div class="hidden md:flex relative inline-flex items-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-blue-700 focus:outline-none">
          <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z" />
          </svg>
          <span class="absolute top-0 right-0 h-2 w-2 rounded-full bg-green-500"></span>
        </div>
        <div class="relative" data-dropdown="setting">
          <!-- Settings Button -->
          <button class="relative inline-flex items-center p-2 rounded-md text-gray-400 hover:text-white hover:bg-blue-700 focus:outline-none"
            phx-click="toggle_settings_dropdown">
            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
          </button>

          <!-- Dropdown Menu -->
          <%= if @dropdown_open do %>
            <div class="absolute right-0 mt-2 w-48 bg-gray-900 rounded-lg shadow-lg border border-gray-800 py-1 z-50"
              data-dropdown-menu="settings">

              <!-- Profile -->
              <a href="#" class="flex items-center px-4 py-3 text-sm text-white-700 hover:bg-gray-700">
                <i class="fas fa-user-circle mr-3 text-white-500"></i>
                Profile Settings
              </a>

              <!-- Theme -->
              <a href="#" class="flex items-center px-4 py-3 text-sm text-white-700 hover:bg-gray-800">
                <i class="fas fa-moon mr-3 text-white-500"></i>
                Theme
              </a>

              <!-- Notifications -->
              <a href="#" class="md:hidden flex items-center px-4 py-3 text-sm text-white-700 hover:bg-gray-800">
                <i class="fas fa-user-circle mr-3 text-white-500"></i>
                Notifications
              </a>

              <!-- Inbox -->
              <a href="#" class="md:hidden flex items-center px-4 py-3 text-sm text-white-700 hover:bg-gray-800">
                <i class="fas fa-moon mr-3 text-white-500"></i>
                Messages
              </a>

              <!-- Help -->
              <a href="#" class="flex items-center px-4 py-3 text-sm text-white-700 hover:bg-gray-800">
                <i class="fas fa-question-circle mr-3 text-white-500"></i>
                Help & Support
              </a>

              <!-- Logout -->
              <.link
                href="/users/log_out"
                method="delete"
                class="flex items-center w-full px-4 py-3 text-sm text-left text-red-600 hover:bg-gray-800"
              >
                <i class="fas fa-sign-out-alt mr-3"></i>
                Logout
              </.link>

            </div>
          <% end %>
        </div>
      </div>
    </header>
    """
  end
end

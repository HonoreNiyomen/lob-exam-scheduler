defmodule LobExamsWeb.Live.AdminSettings do
	use LobExamsWeb, :live_view

	def admin_settings(assigns) do
		~H"""
		<!-- Main Content -->
		<div class="container mx-auto px-4 py-8">
		  <!-- Header with Admin Controls -->
		  <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-8">
		    <div class="flex items-center space-x-4">
		      <div class="bg-indigo-600/20 p-3 rounded-xl">
		        <i data-feather="settings" class="w-8 h-8 text-indigo-400"></i>
		      </div>
		      <div>
		        <h1 class="text-3xl font-bold text-white">System Configuration</h1>
		        <p class="text-gray-400 mt-1">Manage platform settings, security, and integrations</p>
		      </div>
		    </div>
		    <div class="mt-4 md:mt-0 flex space-x-3">
		      <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-lg flex items-center transition-all shadow-lg hover:shadow-indigo-500/20">
		        <i data-feather="save" class="w-4 h-4 mr-2"></i>
		        Save Changes
		      </button>
		      <button class="bg-gray-800 hover:bg-gray-700 text-white px-4 py-2 rounded-lg flex items-center transition-all border border-gray-700">
		        <i data-feather="refresh-cw" class="w-4 h-4 mr-2"></i>
		        Reset Defaults
		      </button>
		    </div>
		  </div>

		  <!-- 🔥 System Health Cards -->
		  <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
		    <!-- System Status -->
		    <div class="bg-gradient-to-br from-green-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-green-900/30 hover:scale-[1.02] transition-transform">
		      <div class="flex items-center justify-between">
		        <div>
		          <p class="text-gray-400">System Status</p>
		          <h3 class="text-2xl font-bold text-white mt-1">Operational</h3>
		          <p class="text-xs text-gray-400 mt-2 flex items-center">
		            <i data-feather="check-circle" class="w-3 h-3 mr-1 text-green-400"></i>
		            All systems normal
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
		          <h3 class="text-2xl font-bold text-white mt-1">1,428</h3>
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

		    <!-- Storage Used -->
		    <div class="bg-gradient-to-br from-purple-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-purple-900/30 hover:scale-[1.02] transition-transform">
		      <div class="flex items-center justify-between">
		        <div>
		          <p class="text-gray-400">Storage Used</p>
		          <h3 class="text-2xl font-bold text-white mt-1">78%</h3>
		          <p class="text-xs text-gray-400 mt-2 flex items-center">
		            <i data-feather="database" class="w-3 h-3 mr-1 text-purple-400"></i>
		            1.2TB / 1.5TB
		          </p>
		        </div>
		        <div class="bg-purple-600/20 p-3 rounded-full">
		          <i data-feather="hard-drive" class="w-6 h-6 text-purple-400"></i>
		        </div>
		      </div>
		    </div>

		    <!-- Security Alerts -->
		    <div class="bg-gradient-to-br from-amber-900/50 to-gray-800 rounded-xl p-6 shadow-lg border border-amber-900/30 hover:scale-[1.02] transition-transform">
		      <div class="flex items-center justify-between">
		        <div>
		          <p class="text-gray-400">Security Alerts</p>
		          <h3 class="text-2xl font-bold text-white mt-1">3</h3>
		          <p class="text-xs text-gray-400 mt-2 flex items-center">
		            <i data-feather="alert-triangle" class="w-3 h-3 mr-1 text-amber-400"></i>
		            Requires attention
		          </p>
		        </div>
		        <div class="bg-amber-600/20 p-3 rounded-full">
		          <i data-feather="shield" class="w-6 h-6 text-amber-400"></i>
		        </div>
		      </div>
		    </div>
		  </div>

		  <!-- 📜 Settings Tabs -->
		  <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden border border-gray-700 mb-8">
		    <!-- Tab Navigation -->
		    <div class="border-b border-gray-700">
		      <nav class="flex">
		        <button class="px-6 py-4 text-sm font-medium text-white border-b-2 border-indigo-500">General</button>
		        <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Security</button>
		        <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Appearance</button>
		        <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Integrations</button>
		        <button class="px-6 py-4 text-sm font-medium text-gray-400 hover:text-white">Advanced</button>
		      </nav>
		    </div>

		    <!-- Tab Content -->
		    <div class="p-6">
		      <!-- General Settings -->
		      <div>
		        <h2 class="text-xl font-semibold text-white mb-6">General Settings</h2>

		        <!-- Platform Name -->
		        <div class="mb-6">
		          <label class="block text-sm font-medium text-gray-400 mb-2">Platform Name</label>
		          <input type="text" value="EduAdmin Pro" class="bg-gray-900 text-white text-sm rounded-lg border border-gray-700 focus:border-indigo-500 focus:ring-indigo-500 block w-full p-2.5">
		        </div>

		        <!-- Timezone -->
		        <div class="mb-6">
		          <label class="block text-sm font-medium text-gray-400 mb-2">Timezone</label>
		          <select class="bg-gray-900 text-white text-sm rounded-lg border border-gray-700 focus:border-indigo-500 focus:ring-indigo-500 block w-full p-2.5">
		            <option selected>(UTC) Coordinated Universal Time</option>
		            <option>(UTC-05:00) Eastern Time</option>
		            <option>(UTC+01:00) Central European Time</option>
		            <option>(UTC+08:00) China Standard Time</option>
		          </select>
		        </div>

		        <!-- System Email -->
		        <div class="mb-6">
		          <label class="block text-sm font-medium text-gray-400 mb-2">System Email</label>
		          <input type="email" value="admin@eduadmin.com" class="bg-gray-900 text-white text-sm rounded-lg border border-gray-700 focus:border-indigo-500 focus:ring-indigo-500 block w-full p-2.5">
		        </div>

		        <!-- Maintenance Mode Toggle -->
		        <div class="flex items-center justify-between p-4 bg-gray-900/50 rounded-lg border border-gray-700">
		          <div>
		            <h3 class="text-sm font-medium text-white">Maintenance Mode</h3>
		            <p class="text-xs text-gray-400">Temporarily disable access for non-admins</p>
		          </div>
		          <label class="relative inline-flex items-center cursor-pointer">
		            <input type="checkbox" class="sr-only peer">
		            <div class="w-11 h-6 bg-gray-700 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-indigo-600"></div>
		          </label>
		        </div>
		      </div>
		    </div>
		  </div>

		  <!-- 🔒 Security Settings Card -->
		  <div class="bg-gray-800 rounded-xl shadow-lg p-6 mb-8 border border-gray-700">
		    <h2 class="text-xl font-semibold text-white mb-6">Security Configuration</h2>

		    <!-- Password Policy -->
		    <div class="mb-6 p-4 bg-gray-900/50 rounded-lg border border-gray-700">
		      <h3 class="text-sm font-medium text-white mb-3">Password Requirements</h3>
		      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
		        <div class="flex items-center">
		          <input id="min-length" type="checkbox" checked class="w-4 h-4 text-indigo-600 bg-gray-700 border-gray-600 rounded focus:ring-indigo-500">
		          <label for="min-length" class="ml-2 text-sm text-gray-300">Minimum 8 characters</label>
		        </div>
		        <div class="flex items-center">
		          <input id="require-numbers" type="checkbox" checked class="w-4 h-4 text-indigo-600 bg-gray-700 border-gray-600 rounded focus:ring-indigo-500">
		          <label for="require-numbers" class="ml-2 text-sm text-gray-300">Require numbers</label>
		        </div>
		        <div class="flex items-center">
		          <input id="require-symbols" type="checkbox" class="w-4 h-4 text-indigo-600 bg-gray-700 border-gray-600 rounded focus:ring-indigo-500">
		          <label for="require-symbols" class="ml-2 text-sm text-gray-300">Require symbols</label>
		        </div>
		        <div class="flex items-center">
		          <input id="expire-passwords" type="checkbox" class="w-4 h-4 text-indigo-600 bg-gray-700 border-gray-600 rounded focus:ring-indigo-500">
		          <label for="expire-passwords" class="ml-2 text-sm text-gray-300">Expire every 90 days</label>
		        </div>
		      </div>
		    </div>

		    <!-- Two-Factor Authentication -->
		    <div class="mb-6 p-4 bg-gray-900/50 rounded-lg border border-gray-700">
		      <div class="flex items-center justify-between">
		        <div>
		          <h3 class="text-sm font-medium text-white">Two-Factor Authentication</h3>
		          <p class="text-xs text-gray-400">Require 2FA for all admin accounts</p>
		        </div>
		        <label class="relative inline-flex items-center cursor-pointer">
		          <input type="checkbox" checked class="sr-only peer">
		          <div class="w-11 h-6 bg-gray-700 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-indigo-600"></div>
		        </label>
		      </div>
		    </div>

		    <!-- IP Whitelisting -->
		    <div class="p-4 bg-gray-900/50 rounded-lg border border-gray-700">
		      <h3 class="text-sm font-medium text-white mb-3">IP Whitelisting</h3>
		      <div class="flex flex-col space-y-3">
		        <div class="flex items-center space-x-3">
		          <input type="text" placeholder="192.168.1.1" class="bg-gray-900 text-white text-sm rounded-lg border border-gray-700 focus:border-indigo-500 focus:ring-indigo-500 block w-full p-2.5">
		          <button class="text-red-400 hover:text-red-500">
		            <i data-feather="trash-2" class="w-5 h-5"></i>
		          </button>
		        </div>
		        <button class="text-indigo-400 hover:text-indigo-300 text-sm flex items-center">
		          <i data-feather="plus" class="w-4 h-4 mr-1"></i>
		          Add IP Address
		        </button>
		      </div>
		    </div>
		  </div>

		  <!-- 🎨 Appearance Settings -->
		  <div class="bg-gray-800 rounded-xl shadow-lg p-6 mb-8 border border-gray-700">
		    <h2 class="text-xl font-semibold text-white mb-6">Appearance & Theme</h2>

		    <!-- Theme Selection -->
		    <div class="mb-6">
		      <label class="block text-sm font-medium text-gray-400 mb-3">System Theme</label>
		      <div class="grid grid-cols-3 gap-4">
		        <!-- Dark Theme -->
		        <div class="relative">
		          <input type="radio" id="theme-dark" name="theme" checked class="hidden peer">
		          <label for="theme-dark" class="flex flex-col items-center justify-between p-4 bg-gray-900 border-2 border-gray-700 rounded-lg cursor-pointer peer-checked:border-indigo-500 hover:bg-gray-700/30 transition-colors">
		            <div class="w-full h-16 rounded bg-gradient-to-r from-gray-800 to-gray-900 mb-2 border border-gray-700"></div>
		            <span class="text-sm font-medium text-white">Dark</span>
		          </label>
		        </div>

		        <!-- Light Theme -->
		        <div class="relative">
		          <input type="radio" id="theme-light" name="theme" class="hidden peer">
		          <label for="theme-light" class="flex flex-col items-center justify-between p-4 bg-gray-900 border-2 border-gray-700 rounded-lg cursor-pointer peer-checked:border-indigo-500 hover:bg-gray-700/30 transition-colors">
		            <div class="w-full h-16 rounded bg-gradient-to-r from-gray-100 to-gray-300 mb-2 border border-gray-300"></div>
		            <span class="text-sm font-medium text-white">Light</span>
		          </label>
		        </div>

		        <!-- Custom Theme -->
		        <div class="relative">
		          <input type="radio" id="theme-custom" name="theme" class="hidden peer">
		          <label for="theme-custom" class="flex flex-col items-center justify-between p-4 bg-gray-900 border-2 border-gray-700 rounded-lg cursor-pointer peer-checked:border-indigo-500 hover:bg-gray-700/30 transition-colors">
		            <div class="w-full h-16 rounded bg-gradient-to-r from-indigo-900 to-purple-900 mb-2 border border-indigo-700"></div>
		            <span class="text-sm font-medium text-white">Custom</span>
		          </label>
		        </div>
		      </div>
		    </div>

		    <!-- Accent Color -->
		    <div>
		      <label class="block text-sm font-medium text-gray-400 mb-3">Accent Color</label>
		      <div class="flex space-x-3">
		        <div class="w-10 h-10 rounded-full bg-indigo-600 border-2 border-indigo-400 cursor-pointer hover:opacity-80 transition-opacity"></div>
		        <div class="w-10 h-10 rounded-full bg-purple-600 border-2 border-transparent cursor-pointer hover:border-purple-400 transition-all"></div>
		        <div class="w-10 h-10 rounded-full bg-blue-600 border-2 border-transparent cursor-pointer hover:border-blue-400 transition-all"></div>
		        <div class="w-10 h-10 rounded-full bg-green-600 border-2 border-transparent cursor-pointer hover:border-green-400 transition-all"></div>
		        <div class="w-10 h-10 rounded-full bg-red-600 border-2 border-transparent cursor-pointer hover:border-red-400 transition-all"></div>
		        <div class="w-10 h-10 rounded-full bg-amber-600 border-2 border-transparent cursor-pointer hover:border-amber-400 transition-all"></div>
		        <button class="w-10 h-10 rounded-full bg-gray-700 border-2 border-dashed border-gray-500 flex items-center justify-center text-gray-400 hover:text-white">
		          <i data-feather="plus" class="w-4 h-4"></i>
		        </button>
		      </div>
		    </div>
		  </div>
		</div>
		"""
	end
end
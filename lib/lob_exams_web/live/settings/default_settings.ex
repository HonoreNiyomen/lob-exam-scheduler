defmodule LobExamsWeb.Live.DefaultSettings do
	use LobExamsWeb, :live_view

	def default_settings(assigns) do
		~H"""
		<!-- Page Header -->
	    <div class="flex justify-between items-center mb-8">
	        <h1 class="text-3xl font-bold text-white">Settings</h1>
	        <div class="flex space-x-4">
	            <button class="px-4 py-2 bg-gray-800 hover:bg-gray-700 rounded-lg border border-gray-700 transition-colors">
	                Discard Changes
	            </button>
	            <button class="px-4 py-2 bg-blue-600 hover:bg-blue-700 rounded-lg transition-colors">
	                Save Changes
	            </button>
	        </div>
	    </div>

	    <!-- Settings Tabs -->
	    <div class="mb-8 border-b border-gray-700">
	        <div class="flex space-x-8">
	            <button class="pb-4 px-1 border-b-2 border-blue-500 text-blue-400 font-medium">
	                General
	            </button>
	            <button class="pb-4 px-1 text-gray-400 hover:text-white font-medium">
	                Security
	            </button>
	            <button class="pb-4 px-1 text-gray-400 hover:text-white font-medium">
	                Notifications
	            </button>
	            <button class="pb-4 px-1 text-gray-400 hover:text-white font-medium">
	                Billing
	            </button>
	        </div>
	    </div>

	    <!-- Settings Content -->
	    <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
	        <!-- Profile Section -->
	        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
	            <h2 class="text-xl font-semibold mb-6 text-white">Profile Information</h2>

	            <div class="space-y-6">
	                <div>
	                    <label class="block text-sm font-medium text-gray-300 mb-1">Profile Picture</label>
	                    <div class="flex items-center space-x-4">
	                        <div class="h-16 w-16 rounded-full bg-gray-700 flex items-center justify-center overflow-hidden">
	                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
	                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
	                            </svg>
	                        </div>
	                        <div class="flex space-x-2">
	                            <button class="px-3 py-1.5 text-sm bg-gray-700 hover:bg-gray-600 rounded-md transition-colors">
	                                Change
	                            </button>
	                            <button class="px-3 py-1.5 text-sm text-red-400 hover:text-red-300 rounded-md transition-colors">
	                                Remove
	                            </button>
	                        </div>
	                    </div>
	                </div>

	                <div>
	                    <label for="name" class="block text-sm font-medium text-gray-300 mb-1">Full Name</label>
	                    <input type="text" id="name" class="w-full bg-gray-700 border border-gray-600 rounded-md px-3 py-2 text-white focus:ring-blue-500 focus:border-blue-500" value="John Doe">
	                </div>

	                <div>
	                    <label for="email" class="block text-sm font-medium text-gray-300 mb-1">Email Address</label>
	                    <input type="email" id="email" class="w-full bg-gray-700 border border-gray-600 rounded-md px-3 py-2 text-white focus:ring-blue-500 focus:border-blue-500" value="john@example.com">
	                </div>

	                <div>
	                    <label for="bio" class="block text-sm font-medium text-gray-300 mb-1">Bio</label>
	                    <textarea id="bio" rows="3" class="w-full bg-gray-700 border border-gray-600 rounded-md px-3 py-2 text-white focus:ring-blue-500 focus:border-blue-500">Senior Software Engineer specializing in Elixir and Phoenix applications.</textarea>
	                </div>
	            </div>
	        </div>

	        <!-- Preferences Section -->
	        <div class="bg-gray-800 rounded-xl p-6 shadow-lg">
	            <h2 class="text-xl font-semibold mb-6 text-white">Preferences</h2>

	            <div class="space-y-6">
	                <div>
	                    <label class="block text-sm font-medium text-gray-300 mb-2">Theme</label>
	                    <div class="flex space-x-4">
	                        <button class="flex-1 py-2 px-4 bg-gray-700 hover:bg-gray-600 rounded-md border border-gray-600 transition-colors">
	                            Light
	                        </button>
	                        <button class="flex-1 py-2 px-4 bg-blue-600 rounded-md border border-blue-600 transition-colors">
	                            Dark
	                        </button>
	                        <button class="flex-1 py-2 px-4 bg-gray-700 hover:bg-gray-600 rounded-md border border-gray-600 transition-colors">
	                            System
	                        </button>
	                    </div>
	                </div>

	                <div>
	                    <label class="block text-sm font-medium text-gray-300 mb-2">Language</label>
	                    <select class="w-full bg-gray-700 border border-gray-600 rounded-md px-3 py-2 text-white focus:ring-blue-500 focus:border-blue-500">
	                        <option>English</option>
	                        <option>Spanish</option>
	                        <option>French</option>
	                        <option>German</option>
	                    </select>
	                </div>

	                <div class="flex items-center justify-between pt-2">
	                    <div>
	                        <label class="block text-sm font-medium text-gray-300 mb-1">Email Notifications</label>
	                        <p class="text-xs text-gray-400">Receive email notifications for important updates</p>
	                    </div>
	                    <label class="relative inline-flex items-center cursor-pointer">
	                        <input type="checkbox" class="sr-only peer" checked>
	                        <div class="w-11 h-6 bg-gray-700 peer-focus:outline-none rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
	                    </label>
	                </div>

	                <div class="flex items-center justify-between pt-2">
	                    <div>
	                        <label class="block text-sm font-medium text-gray-300 mb-1">Public Profile</label>
	                        <p class="text-xs text-gray-400">Make your profile visible to other users</p>
	                    </div>
	                    <label class="relative inline-flex items-center cursor-pointer">
	                        <input type="checkbox" class="sr-only peer">
	                        <div class="w-11 h-6 bg-gray-700 peer-focus:outline-none rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-[2px] after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
	                    </label>
	                </div>
	            </div>
	        </div>

	        <!-- Danger Zone -->
	        <div class="bg-gray-800 rounded-xl p-6 shadow-lg border border-red-900/50 col-span-1 md:col-span-2">
	            <h2 class="text-xl font-semibold mb-6 text-white">Danger Zone</h2>

	            <div class="space-y-6">
	                <div class="flex flex-col md:flex-row md:items-center md:justify-between">
	                    <div class="mb-4 md:mb-0">
	                        <h3 class="text-red-400 font-medium">Delete Account</h3>
	                        <p class="text-sm text-gray-400">Once you delete your account, there is no going back. Please be certain.</p>
	                    </div>
	                    <button class="px-4 py-2 bg-transparent border border-red-500 text-red-400 hover:bg-red-900/30 rounded-md transition-colors">
	                        Delete Account
	                    </button>
	                </div>

	                <div class="flex flex-col md:flex-row md:items-center md:justify-between">
	                    <div class="mb-4 md:mb-0">
	                        <h3 class="text-orange-400 font-medium">Reset Preferences</h3>
	                        <p class="text-sm text-gray-400">Reset all your preferences to default settings.</p>
	                    </div>
	                    <button class="px-4 py-2 bg-transparent border border-orange-500 text-orange-400 hover:bg-orange-900/30 rounded-md transition-colors">
	                        Reset Preferences
	                    </button>
	                </div>
	            </div>
	        </div>
	    </div>
		"""
	end
end
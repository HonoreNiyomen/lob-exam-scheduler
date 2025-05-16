defmodule LobExamsWeb.UserRegistrationLive do
  use LobExamsWeb, :live_view

  alias LobExams.Accounts
  alias LobExams.Accounts.User
  alias LobExams.University, as: U

  def render(assigns) do
    ~H"""
    <div class="min-h-screen bg-gray-900 flex items-center justify-center px-4 py-12">
      <div class="w-full max-w-[800px]">
        <!-- Card Container -->
        <div class="bg-gray-800 rounded-xl shadow-xl overflow-hidden border border-gray-700/50">
          <!-- Gradient Header -->
          <div class="bg-gradient-to-r from-indigo-900/30 to-purple-900/30 p-6 text-center border-b border-gray-700/50">
            <h1 class="text-2xl font-bold text-white">Create Your Account</h1>
            <p class="text-gray-300 mt-1 text-sm">
              Already registered?
              <.link navigate={~p"/users/log_in"} class="font-semibold text-indigo-400 hover:text-indigo-300 transition-colors">
                Sign in here
              </.link>
            </p>
          </div>

          <!-- Form Content -->
          <div class="p-6 sm:p-8">
            <.simple_form
              for={@form}
              id="registration_form"
              phx-submit="save"
              phx-change="validate"
              phx-trigger-action={@trigger_submit}
              action={~p"/users/log_in?_action=registered"}
              method="post"
            >
              <.error :if={@check_errors}>
                Oops, something went wrong! Please check the errors below.
              </.error>

              <!-- Grid Layout for Name Fields -->
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                <div>
                  <.input
                    field={@form[:firstname]}
                    type="text"
                    label="First Name"
                    required
                    class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                  />
                </div>
                <div>
                  <.input
                    field={@form[:lastname]}
                    type="text"
                    label="Last Name"
                    required
                    class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                  />
                </div>
              </div>

              <!-- Username Field -->
              <div class="mb-4">
                <.input
                  field={@form[:username]}
                  type="text"
                  label="Username"
                  required
                  class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                />
              </div>

              <!-- Email Field -->
              <div class="mb-4">
                <.input
                  field={@form[:email]}
                  type="email"
                  label="Email"
                  required
                  class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                />
              </div>

              <!-- Account Type Dropdown -->
              <div class="mb-4">
                <.input
                  field={@form[:role]}
                  type="select"
                  label="Account Type"
                  options={[{"Student Account", "student"}, {"University Account", "university"}]}
                  required
                  class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                />
              </div>

              <!-- University Dropdown (Conditional) -->
              <div class="mb-4" id="university-field">
                <.input
                  field={@form[:university_id]}
                  type="select"
                  label="University"
                  options={Enum.map(@universities, &{&1.name, &1.id})}
                  prompt="Select your university"
                  required
                  class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                />
              </div>

              <!-- Password Fields -->
              <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
                <div>
                  <.input
                    field={@form[:password]}
                    type="password"
                    label="Password"
                    required
                    class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                  />
                </div>
                <div>
                  <.input
                    field={@form[:confirm_password]}
                    type="password"
                    label="Confirm Password"
                    required
                    class="bg-gray-700 border-gray-600 focus:ring-indigo-500 focus:border-indigo-500"
                  />
                </div>
              </div>

              <!-- Submit Button -->
              <:actions>
                <.button
                  phx-disable-with="Creating account..."
                  class="w-full bg-gradient-to-r from-indigo-600 to-purple-600 hover:from-indigo-700 hover:to-purple-700 text-white font-medium py-2.5 px-4 rounded-lg transition-all duration-200 shadow-lg"
                >
                  Create Account
                </.button>
              </:actions>
            </.simple_form>
          </div>

          <!-- Footer Note -->
          <div class="px-6 py-4 bg-gray-800/50 border-t border-gray-700/50 text-center">
            <p class="text-xs text-gray-400">
              By registering, you agree to our
              <.link navigate="#" class="text-indigo-400 hover:underline">Terms</.link>
              and
              <.link navigate="#" class="text-indigo-400 hover:underline">Privacy Policy</.link>
            </p>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    changeset = Accounts.change_user_registration(%User{})

    socket =
      socket
      |> assign(trigger_submit: false, check_errors: false)
      |> assign(universities: U.list_universities())
      |> assign_form(changeset)

    {:ok, socket, temporary_assigns: [form: nil]}
  end

  def handle_event("save", %{"user" => user_params}, socket) do
    case Accounts.register_user(user_params) do
      {:ok, user} ->
        {:ok, _} =
          Accounts.deliver_user_confirmation_instructions(
            user,
            &url(~p"/users/confirm/#{&1}")
          )

        changeset = Accounts.change_user_registration(user)
        {:noreply, socket |> assign(trigger_submit: true) |> assign_form(changeset)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, socket |> assign(check_errors: true) |> assign_form(changeset)}
    end
  end

  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset = Accounts.change_user_registration(%User{}, user_params)
    {:noreply, assign_form(socket, Map.put(changeset, :action, :validate))}
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    form = to_form(changeset, as: "user")

    if changeset.valid? do
      assign(socket, form: form, check_errors: false)
    else
      assign(socket, form: form)
    end
  end
end

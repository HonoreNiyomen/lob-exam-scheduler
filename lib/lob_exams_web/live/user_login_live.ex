defmodule LobExamsWeb.UserLoginLive do
  use LobExamsWeb, :live_view

  def render(assigns) do
    ~H"""
    <!-- login.html.heex -->
    <div class="min-h-auto flex items-center justify-center bg-gray-900 px-4 py-12">
      <div class="w-full max-w-md">
        <div class="bg-gray-800 rounded-xl shadow-lg overflow-hidden p-8">
          <!-- Header -->
          <div class="text-center mb-8">
            <h1 class="text-3xl font-bold text-white mb-2">Welcome Back</h1>
            <p class="text-gray-400">Sign in to your LOB Exam Scheduler account</p>
          </div>

          <.simple_form for={@form} id="login_form" action={~p"/users/log_in"} class="" phx-update="ignore">
            <.input field={@form[:email]} type="email" label="Email" required />
            <.input field={@form[:password]} type="password" label="Password" required />

            <:actions>
              <.input field={@form[:remember_me]} type="checkbox" label="Keep me logged in" />
              <.link href={~p"/users/reset_password"} class="text-sm font-semibold">
                Forgot your password?
              </.link>
            </:actions>
            <:actions>
              <.button phx-disable-with="Logging in..." class="w-full">
                Sign In <span aria-hidden="true">→</span>
              </.button>
            </:actions>
          </.simple_form>

          <!-- Sign Up Link -->
          <div class="mt-6 text-center">
            <p class="text-gray-400">
              Don't have an account?
              <.link navigate={~p"/users/register"} class="font-semibold text-brand hover:underline">
                Sign up
              </.link>
            </p>
          </div>
        </div>
      </div>
    </div>


    <%!-- <div class="mx-auto bg-gray-900 max-w-sm">
      <.header class="text-center text-white">
        Log in to account
        <:subtitle>
          Don't have an account?
          <.link navigate={~p"/users/register"} class="font-semibold text-brand hover:underline">
            Sign up
          </.link>
          for an account now.
        </:subtitle>
      </.header>

      <.simple_form for={@form} id="login_form" action={~p"/users/log_in"} class="" phx-update="ignore">
        <.input field={@form[:email]} type="email" label="Email" required />
        <.input field={@form[:password]} type="password" label="Password" required />

        <:actions>
          <.input field={@form[:remember_me]} type="checkbox" label="Keep me logged in" />
          <.link href={~p"/users/reset_password"} class="text-sm font-semibold">
            Forgot your password?
          </.link>
        </:actions>
        <:actions>
          <.button phx-disable-with="Logging in..." class="w-full">
            Log in <span aria-hidden="true">→</span>
          </.button>
        </:actions>
      </.simple_form>
    </div> --%>
    """
  end

  def mount(_params, _session, socket) do
    email = Phoenix.Flash.get(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")
    {:ok, assign(socket, form: form), temporary_assigns: [form: form]}
  end
end

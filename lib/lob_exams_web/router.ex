defmodule LobExamsWeb.Router do
  use LobExamsWeb, :router

  import LobExamsWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {LobExamsWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :admin_browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {LobExamsWeb.Layouts, :auth_root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LobExamsWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    live_session :redirect_if_user_is_authenticated,
      on_mount: [{LobExamsWeb.UserAuth, :redirect_if_user_is_authenticated}] do
        live "/", HomepageLive
        live "/users/register", UserRegistrationLive, :new
        live "/users/log_in", UserLoginLive, :new
        live "/users/reset_password", UserForgotPasswordLive, :new
        live "/users/reset_password/:token", UserResetPasswordLive, :edit
        live "/features", Live.Features, :new
        live "/developers", Live.Developers, :new
        live "/contact", Live.Contacts, :new
    end

    post "/users/log_in", UserSessionController, :create
  end

  scope "/", LobExamsWeb.Live do
    pipe_through [:admin_browser, :require_authenticated_user]

    live_session :require_authenticated_user,
      on_mount: [{LobExamsWeb.UserAuth, :ensure_authenticated}] do
        live "/dashboard", Dashboard
        live "/exam_schedule", ScheduleExams
        live "/upcoming_exams", Exams
        live "/invigilators", Invigilators
        live "/assigned_invigilators", StudentInvigilators
        live "/rooms", Rooms
        live "/course_modules", CourseModules
        live "/courses", StudentsCourseModules
        live "/manage_insititutions", Insititutions
        live "/general_settings", Settings
        live "/users/settings", UserSettings, :edit
        live "/users/settings/confirm_email/:token", UserSettings, :confirm_email
    end
  end

  scope "/", LobExamsWeb do
    pipe_through [:admin_browser]

    delete "/users/log_out", UserSessionController, :delete

    live_session :current_user,
      on_mount: [{LobExamsWeb.UserAuth, :mount_current_user}] do
        live "/users/confirm/:token", UserConfirmationLive, :edit
        live "/users/confirm", UserConfirmationInstructionsLive, :new
    end
  end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:lob_exams, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: LobExamsWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end

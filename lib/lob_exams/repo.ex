defmodule LobExams.Repo do
  use Ecto.Repo,
    otp_app: :lob_exams,
    adapter: Ecto.Adapters.Postgres
end

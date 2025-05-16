defmodule LobExams.UsersCourses do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users_courses" do
    belongs_to :user, LobExams.Accounts.User
    belongs_to :course_module, LobExams.CourseModule

    timestamps()
  end

  @doc false
  def changeset(users_course, attrs) do
    users_course
    |> cast(attrs, [:user, :course])
    |> validate_required([:user, :course])
    |> foreign_key_constraint(:user)
    |> foreign_key_constraint(:course)
  end
end

defmodule LobExams.CourseModule do
  use Ecto.Schema
  import Ecto.Changeset

  schema "course_modules" do
    field :code, :string
    field :name, :string

    belongs_to :university, LobExams.University

    many_to_many :users, LobExams.Accounts.User,
      join_through: "users_courses",
      on_delete: :delete_all,
      on_replace: :delete

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(course_module, attrs) do
    course_module
    |> cast(attrs, [:name, :code, :university_id])
    |> validate_required([:name, :code])
  end
end

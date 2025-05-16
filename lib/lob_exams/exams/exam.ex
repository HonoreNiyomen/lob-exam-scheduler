defmodule LobExams.Exam do
  use Ecto.Schema
  import Ecto.Changeset

  schema "exams" do
    field :datetime, :utc_datetime

    belongs_to :room, LobExams.Room

    belongs_to :course_module, LobExams.CourseModule

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(exam, attrs) do
    exam
    |> cast(attrs, [:datetime])
    |> validate_required([:datetime])
  end
end

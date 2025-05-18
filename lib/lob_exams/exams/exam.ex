defmodule LobExams.Exam do
  use Ecto.Schema
  import Ecto.Changeset

  schema "exams" do
    field :datetime, :utc_datetime
    field :duration, :integer

    belongs_to :room, LobExams.Room

    belongs_to :course_module, LobExams.CourseModule

    belongs_to :invigilator, LobExams.Accounts.User

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(exam, attrs) do
    exam
    |> cast(attrs, [:datetime, :duration, :room_id, :course_module_id, :invigilator_id])
    |> validate_required([:datetime, :duration, :room_id, :course_module_id, :invigilator_id])
  end
end

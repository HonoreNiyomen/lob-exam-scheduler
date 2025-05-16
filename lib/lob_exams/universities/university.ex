defmodule LobExams.University do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query
  alias LobExams.Repo


  schema "universities" do
    field :name, :string

    has_many :location, LobExams.Location
    has_many :course_module, LobExams.CourseModule

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(university, attrs) do
    university
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end

  def list_universities() do
    __MODULE__
    |> order_by(asc: :name)
    |> Repo.all()
  end

  def list_universities_full() do
    __MODULE__
    |> order_by(asc: :name)
    |> preload([:course_module, location: [:rooms]])
    |> Repo.all()
  end
end

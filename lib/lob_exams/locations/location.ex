defmodule LobExams.Location do
  use Ecto.Schema
  import Ecto.Changeset

  schema "locations" do
    field :mode, :string
    field :venue, :string

    belongs_to :university, LobExams.University
    has_many :rooms, LobExams.Room

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(location, attrs) do
    location
    |> cast(attrs, [:mode, :venue, :university_id])
    |> validate_required([:mode, :venue])
  end
end

defmodule LobExams.Room do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rooms" do
    field :capacity, :integer
    field :name, :string

    belongs_to :location, LobExams.Location

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(room, attrs) do
    room
    |> cast(attrs, [:name, :capacity, :location_id])
    |> validate_required([:name, :capacity])
  end
end

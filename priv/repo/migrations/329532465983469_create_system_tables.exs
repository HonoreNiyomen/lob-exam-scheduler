defmodule LobExams.Repo.Migrations.CreateUsersAuthTables do
  use Ecto.Migration

  def up do
    create_tables()
    # alter_tables()
    table_index()
  end

  def down do
    # drop_tables()
  end

  def create_tables() do
    execute "CREATE EXTENSION IF NOT EXISTS citext", ""

    create_if_not_exists table(:universities) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end

    create_if_not_exists table(:course_modules) do
      add :name, :string
      add :code, :string
      add :university_id, references(:universities, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create_if_not_exists table(:locations) do
      add :mode, :string
      add :venue, :string
      add :university_id, references(:universities, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create_if_not_exists table(:rooms) do
      add :name, :string
      add :capacity, :integer
      add :location_id, references(:locations, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create_if_not_exists table(:users) do
      add :username, :string
      add :firstname, :string
      add :lastname, :string
      add :email, :citext, null: false
      add :hashed_password, :string, null: false
      add :role, :string
      add :confirmed_at, :utc_datetime
      add :university_id, references(:universities, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create_if_not_exists table(:users_tokens) do
      add :user_id, references(:users, on_delete: :delete_all), null: false
      add :token, :binary, null: false
      add :context, :string, null: false
      add :sent_to, :string

      timestamps(type: :utc_datetime, updated_at: false)
    end

    create_if_not_exists table(:exams) do
      add :datetime, :utc_datetime
      add :course_module_id, references(:course_modules, on_delete: :nothing)
      add :room_id, references(:rooms, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create_if_not_exists table(:users_courses) do
      add :user_id, references(:users, on_delete: :delete_all)
      add :course_module_id, references(:course_modules, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end
  end

  def table_index() do
    create_if_not_exists unique_index(:users, [:email])
    create_if_not_exists unique_index(:users_tokens, [:context, :token])
    create_if_not_exists unique_index(:users_courses, [:user_id, :course_module_id])
    create_if_not_exists index(:users_tokens, [:user_id])

    create_if_not_exists index(:locations, [:university_id])
    create_if_not_exists index(:rooms, [:location_id])
    create_if_not_exists index(:course_modules, [:university_id])
    create_if_not_exists index(:exams, [:course_module_id])
    create_if_not_exists index(:exams, [:room_id])
  end
end

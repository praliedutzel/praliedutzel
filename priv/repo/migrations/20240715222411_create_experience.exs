defmodule Praliedutzel.Repo.Migrations.CreateExperience do
  use Ecto.Migration

  def change do
    create table(:experience) do
      add :title, :string
      add :company, :string
      add :timeframe, :string
      add :description, :text

      timestamps(type: :utc_datetime)
    end
  end
end

defmodule Praliedutzel.Repo.Migrations.CreateCaseStudies do
  use Ecto.Migration

  def change do
    create table(:case_studies) do
      add :title, :text
      add :slug, :string
      add :teaser_text, :text
      add :tags, {:array, :string}
      add :goal, :text
      add :contributions, {:array, :string}
      add :tools, {:array, :string}
      add :features, {:array, :string}
      add :client, :string
      add :link, :string
      add :callout, :string

      timestamps(type: :utc_datetime)
    end
  end
end

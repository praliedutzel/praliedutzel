defmodule Praliedutzel.Experience do
  @moduledoc """
  The context for experiences, which are rendered on the about page.
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "experience" do
    field :description, :string
    field :title, :string
    field :company, :string
    field :timeframe, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(experience, attrs) do
    experience
    |> cast(attrs, [:title, :company, :timeframe, :description])
    |> validate_required([:title, :company, :timeframe, :description])
  end
end

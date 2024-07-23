defmodule Praliedutzel.CaseStudies.CaseStudy do
  use Ecto.Schema
  import Ecto.Changeset

  schema "case_studies" do
    field :title, :string
    field :tools, {:array, :string}, default: []
    field :features, {:array, :string}, default: []
    field :slug, :string
    field :teaser_text, :string
    field :tags, {:array, :string}, default: []
    field :goal, :string
    field :contributions, {:array, :string}, default: []
    field :client, :string
    field :link, :string
    field :callout, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(case_study, attrs) do
    case_study
    |> cast(attrs, [
      :title,
      :slug,
      :teaser_text,
      :tags,
      :goal,
      :contributions,
      :tools,
      :features,
      :client,
      :link,
      :callout
    ])
    |> validate_subset(:tags, valid_options(tag_options()))
    |> validate_subset(:contributions, valid_options(contribution_options()))
    |> validate_subset(:tools, valid_options(tool_options()))
    |> validate_required([
      :title,
      :slug,
      :teaser_text,
      :tags,
      :goal,
      :contributions,
      :tools,
      :features,
      :client,
      :callout
    ])
    |> validate_length(:tags, min: 1)
    |> validate_length(:contributions, min: 1)
    |> validate_length(:tools, min: 1)
  end

  def tag_options,
    do: [
      {"UX design", "ux-design"},
      {"UI design", "ui-design"},
      {"Elixir development", "elixir-development"},
      {"React development", "react-development"},
      {"WordPress development", "wordpress-development"},
      {"E-commerce development", "e-commerce-development"}
    ]

  def contribution_options,
    do: [
      {"UI/UX design", "ui-ux-design"},
      {"UX strategy", "ux-strategy"},
      {"Design systems management", "design-systems"},
      {"Front-end development", "front-end-development"},
      {"Component development", "component-development"},
      {"CMS integration", "cms-integration"},
      {"Accessibility", "accessibility"},
      {"Interaction design", "interaction-design"},
      {"Prototyping", "prototyping"},
      {"Animation", "animation"},
      {"Design ops", "design-ops"},
      {"HTML email development", "email-development"},
      {"Information architecture", "information-architecture"},
      {"Documentation", "documentation"},
      {"Copywriting", "copywriting"},
      {"Assisted with UX research", "ux-research"}
    ]

  def tool_options,
    do: [
      {"Sketch", "sketch"},
      {"Figma", "figma"},
      {"Photoshop", "photoshop"},
      {"Invision", "invision"},
      {"Elixir", "elixir"},
      {"Phoenix", "phoenix"},
      {"LiveView", "liveview"},
      {"React", "react"},
      {"WordPress", "wordpress"},
      {"Kentico", "kentico"},
      {"PrestaShop", "prestashop"},
      {"JavaScript", "javascript"}
    ]

  def callout_options,
    do: [
      {"Only available upon request", "nda"},
      {"May be changes from the original", "changes"},
      {"No longer available", "unavailable"}
    ]

  defp valid_options(options), do: Enum.map(options, fn {title, _id} -> title end)
end

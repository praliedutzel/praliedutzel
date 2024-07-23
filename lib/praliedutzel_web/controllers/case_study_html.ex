defmodule PraliedutzelWeb.CaseStudyHTML do
  use PraliedutzelWeb, :html

  import PraliedutzelWeb.SharedLinks

  embed_templates "case_study_html/*"
  embed_templates "case_study_html/content/*"

  @doc """
  Renders the HTML content for a case study based on the provided slug.

  The Heex template name should match the slug name, including hyphens.
  """
  attr :slug, :string, required: true

  def case_study_content(%{slug: slug} = assigns) do
    template = String.to_existing_atom(slug)

    apply(PraliedutzelWeb.CaseStudyHTML, template, [assigns])
  end
end

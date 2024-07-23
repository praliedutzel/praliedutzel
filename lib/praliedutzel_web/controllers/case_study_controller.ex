defmodule PraliedutzelWeb.CaseStudyController do
  use PraliedutzelWeb, :controller

  alias Praliedutzel.CaseStudies

  def index(conn, _params) do
    case_studies = CaseStudies.list_case_studies()

    conn
    |> assign(:page_title, gettext("Case Studies"))
    |> assign(
      :meta_description,
      gettext(
        "Case studies of the work of Pralie Dutzel, user experience designer and front-end developer."
      )
    )
    |> assign(:case_studies, case_studies)
    |> render(:index)
  end

  def show(conn, %{"id" => slug}) do
    case_study = CaseStudies.get_case_study!(slug)

    conn
    |> assign(:page_title, gettext("%{title} Case Study", title: case_study.title))
    |> assign(:case_study, case_study)
    |> render(:show)
  end
end

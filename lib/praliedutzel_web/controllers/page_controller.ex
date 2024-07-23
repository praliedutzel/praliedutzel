defmodule PraliedutzelWeb.PageController do
  use PraliedutzelWeb, :controller
  import Ecto.Query, warn: false

  alias Praliedutzel.Repo
  alias Praliedutzel.CaseStudies.CaseStudy
  alias Praliedutzel.Experience

  def home(conn, _params) do
    case_studies =
      CaseStudy
      |> limit(5)
      |> Repo.all()

    conn
    |> assign(:page_title, gettext("Senior UX Designer & Front-End Developer"))
    |> assign(
      :meta_description,
      gettext(
        "The portfolio of Pralie Dutzel, a user experience designer, front-end developer, accessibility advocate, and design strategist."
      )
    )
    |> assign(:case_studies, case_studies)
    |> render(:home, layout: false)
  end

  def about(conn, _params) do
    conn
    |> assign(:page_title, gettext("About"))
    |> assign(
      :meta_description,
      gettext(
        "Pralie Dutzel is a user experience designer, front-end developer, accessibility advocate, and design strategist."
      )
    )
    |> assign(:hero_title, gettext("About Pralie Dutzel"))
    |> assign(:hero_graphic, ~p"/images/case-studies/vrbo-internal-tools/hero.jpg")
    |> assign(:experience, Repo.all(Experience))
    |> render(:about)
  end
end

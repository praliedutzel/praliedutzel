defmodule PraliedutzelWeb.SharedLinks do
  @moduledoc """
  Links referenced throughout the app.
  """
  use PraliedutzelWeb, :verified_routes

  def contact_email, do: "praliedutzel@gmail.com"

  def resume_link, do: ~p"/pdfs/pralie-dutzel-resume-senior-designer-developer.pdf"

  def portfolio_figma_link,
    do:
      "https://www.figma.com/design/vmCb7DuY70KQEMOoMHsmMR/Portfolio-Site?node-id=296-3792&t=g0BRhBDOCL0SDbgN-1"

  def portfolio_github_link, do: "https://github.com/praliedutzel/praliedutzel"

  def linkedin_link, do: "https://www.linkedin.com/in/praliedutzel"

  def dribbble_link, do: "https://dribbble.com/pralie"

  def behance_link, do: "https://www.behance.net/praliedutzel"

  def github_link, do: "https://github.com/praliedutzel"

  def codepen_link, do: "http://codepen.io/praliedutzel/"
end

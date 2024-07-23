defmodule PraliedutzelWeb.SharedLinks do
  @moduledoc """
  Links referenced throughout the app.
  """
  use PraliedutzelWeb, :verified_routes

  def contact_email, do: "praliedutzel@gmail.com"

  def resume_link, do: ~p"/pdfs/pralie-dutzel-resume-senior-designer-developer.pdf"

  def portfolio_figma_link, do: nil

  def portfolio_github_link, do: nil
end

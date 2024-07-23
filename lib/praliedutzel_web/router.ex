defmodule PraliedutzelWeb.Router do
  use PraliedutzelWeb, :router

  import Redirect

  # Redirects from old portfolio site
  redirect("/contact", "/about", :permanent)
  redirect("/talks", "/about", :permanent)
  redirect("/games", "/about", :permanent)
  redirect("/showcase", "/case-studies", :permanent)
  redirect("/work/atlas-design-system", "/case-studies/atlas-design-system", :permanent)

  redirect(
    "/work/vrbo-internal-productivity-tools",
    "/case-studies/vrbo-internal-tools",
    :permanent
  )

  redirect("/work/freestar", "/case-studies/freestar-blog", :permanent)
  redirect("/work/parsons-xtreme-golf", "/case-studies/pxg-website", :permanent)

  redirect(
    "/work/development-resource-portal",
    "/case-studies/big-yam-developer-resource-portal",
    :permanent
  )

  redirect(
    "/work/bob-renee-parsons-foundation",
    "/case-studies/bob-renee-parsons-foundation-website",
    :permanent
  )

  redirect("/work/yurbuds", "/case-studies/yurbuds-ecommerce-website", :permanent)

  redirect(
    "/work/valley-of-the-sun-ymca",
    "/case-studies/valley-of-the-sun-ymca-website",
    :permanent
  )

  redirect(
    "/work/vrbo-internal-productivity-tools-case-study",
    "/case-studies/vrbo-internal-tools",
    :permanent
  )

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :put_root_layout, html: {PraliedutzelWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PraliedutzelWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/about", PageController, :about

    get "/case-studies", CaseStudyController, :index
    get "/case-studies/:id", CaseStudyController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", PraliedutzelWeb do
  #   pipe_through :api
  # end
end

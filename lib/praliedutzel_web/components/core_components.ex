defmodule PraliedutzelWeb.CoreComponents do
  @moduledoc """
  Core UI components used across the app.
  """
  use Phoenix.Component
  use PraliedutzelWeb, :verified_routes

  import PraliedutzelWeb.Gettext
  import PraliedutzelWeb.Icons
  import PraliedutzelWeb.SharedLinks, only: [contact_email: 0]

  @doc """
  Renders a skip link which can be used to skip past the navigation.

  ## Examples

    <.skip_link />
  """

  def skip_link(assigns) do
    ~H"""
    <a href="#main" class="skip-link button"><%= gettext("Skip to main content") %></a>
    """
  end

  @doc """
  Renders a heading tag with decorative elements.

  ## Examples

    <.decorative_heading tag="h2" style="bolder">
      Heading text
    </.decorative_heading>
  """
  attr :tag, :string,
    required: true,
    values: ["h2", "h3", "h4"],
    doc: "Heading level to render the tag as"

  attr :style, :string,
    default: nil,
    values: ["bolder", "simpler", nil],
    doc: "Decoration style to display. See Figma mock-ups for example usage"

  slot :inner_block, required: true, doc: "The text content to render inside the heading tag"

  def decorative_heading(assigns) do
    ~H"""
    <.dynamic_tag
      name={@tag}
      class={[
        "decorative-heading",
        @style && "decorative-heading--#{@style}"
      ]}
    >
      <.shapes :if={@style == "bolder"} />
      <.dots :if={is_nil(@style)} size="xs" />
      <.shapes :if={@style == "simpler"} name="diamond" />
      <span><%= render_slot(@inner_block) %></span>
      <.shapes :if={@style == "bolder"} />
    </.dynamic_tag>
    """
  end

  @doc """
  Renders an image tag with a srcset attribute including the 2x version of the image. Please ensure there is a 2x version of the image available when using.

  ## Examples

    <.image src="/images/corgi.png" alt="An adorable corgi" />
    <.image src="/images/decoration.png" />
    <.image src="/images/pacman-ghost.png" class="color-orange" />
  """

  attr :src, :string,
    required: true,
    doc:
      "Source for the image to display. A 2x version should be supplied with `@2x` at the end of the filename, before the extension"

  attr :alt, :string, default: "", doc: "Alt attribute to add to the image tag"
  attr :rest, :global

  def image(assigns) do
    src_2x =
      assigns.src
      |> String.split(".")
      |> List.insert_at(1, "@2x.")
      |> Enum.join()

    assigns = assign(assigns, :src_2x, src_2x)

    ~H"""
    <img src={@src} srcset={"#{@src_2x} 2x"} alt={@alt} {@rest} />
    """
  end

  @doc """
  Renders a tag item. Tags are intended to be used in lists and include markup for list items. Be sure to wrap all tags in a list.

  ## Examples

      <ul>
        <.tag>Item A</.tag>
        <.tag>Item B</.tag>
      </ul>

      <ul>
        <.tag :for={item <- @items} size="lg">
          <%= item %>
        </.tag>
      </ul>
  """
  attr :size, :string,
    default: nil,
    values: ["sm", "lg", nil],
    doc: "Additional size modifier to add to the tag"

  slot :inner_block, required: true, doc: "The text content for the tag"

  def tag(assigns) do
    ~H"""
    <li class={["tag", @size && "tag--size-#{@size}"]}>
      <%= render_slot(@inner_block) %>
    </li>
    """
  end

  @doc """
  Renders a stylized block intended to call attention to its contents.

  # Examples

      <.callout>
        Check this out!
      </.callout>
  """
  slot :inner_block, required: true

  def callout(assigns) do
    ~H"""
    <div class="callout">
      <.shapes />
      <div class="callout__content">
        <%= render_slot(@inner_block) %>
      </div>
    </div>
    """
  end

  @doc """
  Renders a panel intended to display selected experiences such as work, speaking engagements, or awards.

  # Examples

      <.experience_panel
        title="Senior Front-End Web Designer"
        company"Joydrive"
        year="2020 - 2024"
      >
        A brief description of this experience.
      </.experience_panel>
  """
  attr :title, :string, required: true, doc: "The title of the experience"
  attr :company, :string, required: true, doc: "The name of the company or organization"
  attr :year, :string, required: true, doc: "The year (or years) the experience took place"

  slot :inner_block, required: true, doc: "A brief description of the experience"

  def experience_panel(assigns) do
    ~H"""
    <div class="panel">
      <div class="panel__section">
        <h3 class="panel__title">
          <%= @title %>
        </h3>
        <div class="panel__meta">
          <.shapes name="diamond" />
          <%= @company %> <span class="panel__meta-separator">&middot;</span> <%= @year %>
        </div>
        <p>
          <%= render_slot(@inner_block) %>
        </p>
      </div>
    </div>
    """
  end

  @doc """
  Renders a card intended to preview and link to a case study.

  It includes the name of the case study, a brief description, tags describing what kind of project it was, and a preview image.

  # Examples

      <.card slug="atlas-design-system" tags={@tags}>
        <:title>Atlas Design System</:title>
        <:description>A brief description of the work.</:description>
      </.card>
  """
  attr :slug, :string,
    required: true,
    doc: "The slug for the case study, which is used for the link and the path for the image"

  attr :tags, :list,
    required: true,
    doc: "List of tags to display in the card, giving a high level preview of the type of project"

  slot :title, required: true, doc: "The name of the case study"
  slot :description, required: true, doc: "A brief description about the project"

  def card(assigns) do
    ~H"""
    <.link href={~p"/case-studies/#{@slug}"} class="card">
      <div class="card__content">
        <.dynamic_tag name="h3" class="card__title">
          <%= render_slot(@title) %>
        </.dynamic_tag>
        <p class="card__description">
          <%= render_slot(@description) %>
        </p>
        <ul class="card__tags tag-list">
          <.tag :for={tag <- @tags}><%= tag %></.tag>
        </ul>
      </div>
      <div class="card__media" role="presentation">
        <.image src={~p"/images/case-studies/#{@slug}/hero.png"} class="card__media-image" />
        <.dots size="sm" />
      </div>
    </.link>
    """
  end

  @doc """
  Renders a hero banner with the page title. It can optionally include a description, action, and image.

  ## Examples

      <.hero>
        <:title>About</:title>
      </.hero>

      <.hero image="/images/hero.jpg">
        <:title>About</:title>
        <:description>A brief description.</:description>
      </.hero>
  """
  attr :homepage?, :boolean,
    default: false,
    doc: "Renders additional markup specific to the homepage hero banner when tru"

  attr :image, :string,
    default: nil,
    doc: "An optional image to display next to the content inside the hero banner"

  slot :title,
    required: true,
    doc: "The text to render inside the `h1` tag describing what the page is for"

  slot :description, doc: "An optional description to render below the hero title"
  slot :action, doc: "An optional action to render below the hero title and/or description"

  def hero(%{:homepage? => true} = assigns) do
    ~H"""
    <div class="hero hero--homepage">
      <div class="hero__content">
        <h1><%= render_slot(@title) %></h1>
        <p :if={@description != []}>
          <%= render_slot(@description) %>
        </p>
        <%= render_slot(@action) %>
      </div>
      <div class="hero__media">
        <.dots size="md" />
        <.image src={~p"/images/hero-shapes.png"} class="hero__shapes" role="presentation" />
        <.image src={@image} class="hero__image" />
      </div>
      <div>
        <.image
          src={~p"/images/hero-shapes-corner.png"}
          class="hero__shapes hero__shapes--corner"
          role="presentation"
        />
      </div>
    </div>
    """
  end

  def hero(assigns) do
    ~H"""
    <div class="hero">
      <div class="hero__content">
        <h1><%= render_slot(@title) %></h1>
        <p :if={@description != []}>
          <%= render_slot(@description) %>
        </p>
        <%= render_slot(@action) %>
      </div>
      <div class="hero__media">
        <.dots size="lg" />
        <.image :if={@image} src={@image} />
      </div>
      <.dots :if={!@image} size="xl" />
    </div>
    """
  end

  @doc """
  Renders the site header and navigation.

  ## Examples

      <.header />
  """

  def header(assigns) do
    ~H"""
    <header class="header">
      <nav class="header__navbar">
        <ul class="menu">
          <li class="menu__item">
            <.link href={~p"/"} class="menu__link">
              <span>Pralie <span class="last-name">Dutzel</span></span>
            </.link>
          </li>
          <li class="menu__item">
            <.link href={~p"/about"} class="menu__link">
              <%= gettext("About") %>
            </.link>
          </li>
          <li class="menu__item">
            <.link href={~p"/case-studies"} class="menu__link">
              <%= gettext("Case Studies") %>
            </.link>
          </li>
        </ul>
      </nav>
    </header>
    """
  end

  @doc """
  Renders the site footer.

  ## Examples

      <.footer />
  """

  def footer(assigns) do
    ~H"""
    <footer class="footer">
      <div class="footer__band">
        <p class="semibold-text"><%= gettext("Let's connect") %></p>
        <.link href={"mailto:#{contact_email()}"} class="link">
          <%= contact_email() %>
        </.link>
      </div>
      <div class="footer__band">
        <p>&copy; Pralie Dutzel</p>
        <ul class="social">
          <li class="social__item">
            <.link
              href="https://www.linkedin.com/in/praliedutzel"
              class="social__link"
              target="_blank"
              rel="noopener"
            >
              <.icon name="linkedin" />
              <span class="visually-hidden">LinkedIn</span>
            </.link>
          </li>
          <li class="social__item">
            <.link
              href="https://dribbble.com/pralie"
              class="social__link"
              target="_blank"
              rel="noopener"
            >
              <.icon name="dribble" />
              <span class="visually-hidden">Dribble</span>
            </.link>
          </li>
          <li class="social__item">
            <.link
              href="https://www.behance.net/praliedutzel"
              class="social__link"
              target="_blank"
              rel="noopener"
            >
              <.icon name="behance" />
              <span class="visually-hidden">Behance</span>
            </.link>
          </li>
          <li class="social__item">
            <.link
              href="https://github.com/praliedutzel"
              class="social__link"
              target="_blank"
              rel="noopener"
            >
              <.icon name="github" />
              <span class="visually-hidden">GitHub</span>
            </.link>
          </li>
          <li class="social__item">
            <.link
              href="http://codepen.io/praliedutzel/"
              class="social__link"
              target="_blank"
              rel="noopener"
            >
              <.icon name="codepen" />
              <span class="visually-hidden">CodePen</span>
            </.link>
          </li>
        </ul>
      </div>
    </footer>
    """
  end
end

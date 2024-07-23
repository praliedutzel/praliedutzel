defmodule PraliedutzelWeb.Icons do
  @moduledoc """
  Reusable SVG icons and various shapes.
  """
  use Phoenix.Component

  @doc """
  Renders the SVG for the specified icon. Things to keep in mind regarding icons:

  * Icons will be sized to the font size of their parent element.
  * Icons will inherit the color of their parent element.
  * Icons have `aria-hidden="true"` applied, so accessible text needs to be included alongside the icon if it is not purely presentational.

  ## Example

      <.icon name="arrow" />
  """
  attr :name, :string, required: true, doc: "The name of the icon to display"

  def icon(%{:name => "arrow"} = assigns) do
    ~H"""
    <svg
      class="icon"
      aria-hidden="true"
      width="32"
      height="32"
      viewBox="0 0 32 32"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="m15.057 7.61 7.058 7.057H6.667a1.334 1.334 0 0 0 0 2.666h15.448l-7.058 7.058a1.333 1.333 0 0 0 1.885 1.885l9.334-9.333c.123-.123.221-.27.29-.432a1.341 1.341 0 0 0-.29-1.454l-9.333-9.333a1.333 1.333 0 1 0-1.885 1.885Z"
        fill="currentColor"
      />
    </svg>
    """
  end

  def icon(%{:name => "alert"} = assigns) do
    ~H"""
    <svg
      class="icon"
      aria-hidden="true"
      width="24"
      height="24"
      viewBox="0 0 24 24"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M11.148 4.374a.973.973 0 0 1 .334-.332.99.99 0 0 1 .756-.116.99.99 0 0 1 .614.448l8.466 14.133c.07.12.119.268.128.434-.015.368-.119.591-.283.759a.988.988 0 0 1-.693.301L3.533 20a.997.997 0 0 1-.855-1.486l8.47-14.14ZM9.432 3.346l-8.47 14.14a3.005 3.005 0 0 0-.308 2.29 2.99 2.99 0 0 0 1.398 1.822c.464.268.976.4 1.475.402H20.47a3 3 0 0 0 2.572-4.507L14.568 3.346a2.995 2.995 0 0 0-4.123-1.014c-.429.26-.776.615-1.013 1.014ZM11 9v4a1 1 0 0 0 2 0V9a1 1 0 0 0-2 0Zm1 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2Z"
        fill="currentColor"
      />
    </svg>
    """
  end

  def icon(%{:name => "linkedin"} = assigns) do
    ~H"""
    <svg
      class="icon"
      aria-hidden="true"
      width="24"
      height="25"
      viewBox="0 0 24 25"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M20.447 20.952h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.94v5.667H9.351V9.5h3.414v1.56h.046c.477-.9 1.637-1.85 3.37-1.85 3.6 0 4.266 2.37 4.266 5.455v6.286ZM5.337 7.933A2.062 2.062 0 0 1 3.274 5.87a2.064 2.064 0 1 1 2.063 2.065Zm1.782 13.019H3.555V9.5h3.564v11.452ZM22.225.5H1.77C.792.5 0 1.274 0 2.229V22.77c0 .957.792 1.73 1.77 1.73h20.452c.978 0 1.778-.774 1.778-1.73V2.23C24 1.274 23.2.5 22.222.5h.003Z"
        fill="currentColor"
      />
    </svg>
    """
  end

  def icon(%{:name => "dribble"} = assigns) do
    ~H"""
    <svg
      class="icon"
      aria-hidden="true"
      width="24"
      height="25"
      viewBox="0 0 24 25"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M12 24.5c-6.615 0-12-5.385-12-12S5.385.5 12 .5s12 5.385 12 12-5.385 12-12 12Zm10.12-10.358c-.35-.11-3.17-.954-6.384-.438 1.34 3.684 1.887 6.684 1.992 7.308a10.265 10.265 0 0 0 4.392-6.87Zm-6.115 7.808c-.153-.9-.75-4.032-2.19-7.77l-.066.02c-5.79 2.015-7.86 6.025-8.04 6.4a10.16 10.16 0 0 0 6.29 2.166c1.42 0 2.77-.29 4.006-.816Zm-11.62-2.58c.232-.4 3.045-5.055 8.332-6.765.135-.045.27-.084.405-.12-.26-.585-.54-1.167-.832-1.74C7.17 12.275 2.207 12.21 1.757 12.2l-.004.312c0 2.633.997 5.037 2.632 6.858Zm-2.42-8.955c.46.008 4.683.026 9.477-1.248a65.41 65.41 0 0 0-3.8-5.928 10.276 10.276 0 0 0-5.677 7.176ZM9.6 2.552c.282.38 2.145 2.914 3.822 6 3.645-1.365 5.19-3.44 5.373-3.702A10.189 10.189 0 0 0 9.6 2.552Zm10.335 3.483c-.218.29-1.935 2.493-5.724 4.04.24.49.47.985.68 1.486.08.18.15.36.22.53 3.41-.43 6.8.26 7.14.33-.02-2.42-.88-4.64-2.316-6.386Z"
        fill="currentColor"
      />
    </svg>
    """
  end

  def icon(%{:name => "behance"} = assigns) do
    ~H"""
    <svg
      class="icon"
      aria-hidden="true"
      width="24"
      height="25"
      viewBox="0 0 24 25"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M6.938 5.003a8.9 8.9 0 0 1 1.92.188c.577.13 1.07.33 1.485.61.41.28.733.65.96 1.12.225.47.34 1.05.34 1.73 0 .74-.17 1.36-.507 1.86-.338.5-.837.9-1.502 1.22.906.26 1.575.72 2.022 1.37.447.66.665 1.45.665 2.36 0 .75-.13 1.39-.41 1.93-.28.55-.67 1-1.16 1.35-.48.348-1.05.6-1.67.768a7.313 7.313 0 0 1-1.911.254H0V5.01h6.938v-.008ZM16.94 17.165c.44.428 1.073.643 1.894.643.59 0 1.1-.148 1.53-.447.424-.29.68-.61.78-.94h2.588c-.402 1.28-1.047 2.2-1.9 2.75-.85.56-1.884.83-3.08.83-.837 0-1.584-.13-2.271-.4a4.953 4.953 0 0 1-1.72-1.14 5.097 5.097 0 0 1-1.077-1.77c-.253-.69-.373-1.45-.373-2.27 0-.803.135-1.54.403-2.23.27-.7.644-1.28 1.12-1.79a5.438 5.438 0 0 1 1.736-1.194c.673-.299 1.4-.432 2.22-.432.91 0 1.69.164 2.38.522.67.34 1.22.82 1.66 1.4.44.586.75 1.26.939 2.02.19.75.25 1.54.21 2.38h-7.69c0 .84.28 1.632.71 2.065l-.08.03.021-.027Zm-10.24.05c.317 0 .62-.03.906-.093.29-.06.548-.165.763-.3.21-.135.39-.328.52-.583.129-.24.189-.57.189-.96 0-.75-.22-1.29-.64-1.62-.43-.32-.99-.48-1.69-.48H3.24v4.05H6.7v-.014Zm13.607-5.65c-.352-.385-.94-.592-1.657-.592-.468 0-.855.074-1.166.238-.302.15-.55.35-.74.59-.19.24-.317.48-.392.75-.076.26-.12.5-.136.71h4.762c-.07-.75-.33-1.3-.68-1.69l.009-.006ZM6.52 10.95c.574 0 1.05-.135 1.425-.412.374-.27.554-.72.554-1.338 0-.344-.07-.625-.18-.846-.13-.22-.3-.39-.5-.512-.21-.124-.45-.21-.72-.258a4.408 4.408 0 0 0-.84-.074h-3.03v3.44h3.29Zm9.098-4.958h5.968v1.454h-5.968V5.98v.012Z"
        fill="currentColor"
      />
    </svg>
    """
  end

  def icon(%{:name => "github"} = assigns) do
    ~H"""
    <svg
      class="icon"
      aria-hidden="true"
      width="24"
      height="25"
      viewBox="0 0 24 25"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="M12 .797c-6.63 0-12 5.373-12 12 0 5.303 3.438 9.8 8.205 11.385.6.113.82-.258.82-.577 0-.285-.01-1.04-.015-2.04-3.338.724-4.042-1.61-4.042-1.61C4.422 18.57 3.633 18.2 3.633 18.2c-1.087-.744.084-.73.084-.73 1.205.085 1.838 1.237 1.838 1.237 1.07 1.835 2.809 1.305 3.495.998.108-.776.417-1.305.76-1.605-2.665-.3-5.466-1.332-5.466-5.93 0-1.31.465-2.38 1.235-3.22-.135-.303-.54-1.523.105-3.176 0 0 1.005-.322 3.3 1.23.96-.267 1.98-.4 3-.405 1.02.006 2.04.138 3 .405 2.28-1.552 3.285-1.23 3.285-1.23.645 1.653.24 2.873.12 3.176.765.84 1.23 1.91 1.23 3.22 0 4.61-2.805 5.625-5.475 5.92.42.36.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.285 0 .315.21.69.825.57C20.565 22.591 24 18.091 24 12.796c0-6.627-5.373-12-12-12Z"
        fill="currentColor"
      />
    </svg>
    """
  end

  def icon(%{:name => "codepen"} = assigns) do
    ~H"""
    <svg
      class="icon"
      aria-hidden="true"
      width="24"
      height="25"
      viewBox="0 0 24 25"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        d="m24 8.682-.018-.087-.017-.05c-.01-.025-.018-.05-.03-.076-.003-.018-.015-.033-.02-.05l-.036-.067-.03-.05-.044-.06-.046-.045-.06-.045-.046-.03-.06-.044-.044-.04-.015-.02L12.58.688a1.025 1.025 0 0 0-1.142 0L.333 8.102l-.038.04-.05.056-.037.045-.05.06c-.02.017-.03.03-.03.046l-.05.06-.021.06c-.02.01-.02.04-.03.07l-.01.05C0 8.618 0 8.648 0 8.678v7.498c0 .044.003.09.01.135l.009.046c.005.03.01.06.02.086l.015.05c.01.027.016.053.027.075l.022.05c0 .01.015.04.03.06l.03.04c.015.01.03.04.045.06l.03.04.04.04c.01.012.01.03.03.03l.06.041.04.03.01.015 10.97 7.33a.97.97 0 0 0 .57.162c.194 0 .39-.06.57-.18l11.157-7.406.052-.058.033-.045.04-.06.03-.05.03-.07.015-.052.03-.077.015-.045.03-.08v-7.5c0-.05 0-.095-.015-.14l-.014-.045.044.003.026.02Zm-11.99 6.28-3.65-2.44 3.65-2.441 3.65 2.44-3.65 2.441Zm-1.034-6.674-4.473 2.99-3.612-2.416 8.085-5.39v4.816Zm-6.33 4.233-2.582 1.73v-3.45l2.582 1.72Zm1.857 1.25 4.473 2.99v4.82l-8.085-5.39 3.618-2.418-.006-.002Zm6.537 2.99 4.474-2.98 3.613 2.42-8.087 5.39v-4.83Zm6.33-4.23 2.583-1.72v3.456l-2.583-1.736Zm-1.855-1.24L13.042 8.3V3.47l8.085 5.39-3.612 2.415v.016Z"
        fill="currentColor"
      />
    </svg>
    """
  end

  def icon(assigns), do: ~H""

  @doc """
  Renders the SVG for the specified shape. These are purely decoration.

  # Examples

      <.shapes name="diamond" />
      <.shapes />
  """
  attr :name, :string,
    default: nil,
    values: [nil, "diamond"],
    doc:
      "Name of the shape to render. If no name is provided, defaults to showing a group of shapes"

  def shapes(%{:name => "diamond"} = assigns) do
    ~H"""
    <svg
      class="shapes"
      aria-hidden="true"
      width="23"
      height="23"
      viewBox="0 0 23 23"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        fill-rule="evenodd"
        clip-rule="evenodd"
        d="M11.728 4.429 4.657 11.5l7.07 7.071L18.8 11.5l-7.071-7.071Zm-9.9 4.243a4 4 0 0 0 0 5.656L8.9 21.4a4 4 0 0 0 5.657 0l7.071-7.072a4 4 0 0 0 0-5.656L14.557 1.6a4 4 0 0 0-5.658 0L1.83 8.67Z"
        fill="#C312D3"
      />
    </svg>
    """
  end

  def shapes(assigns) do
    ~H"""
    <svg
      class="shapes"
      aria-hidden="true"
      width="72"
      height="58"
      viewBox="0 0 72 58"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <path
        fill-rule="evenodd"
        clip-rule="evenodd"
        d="m46.6 37.447 4.475 12.293 12.294-4.474-4.475-12.294-12.293 4.475Zm-3.931-4.954a4 4 0 0 0-2.39 5.127l5.842 16.052a4 4 0 0 0 5.127 2.39L67.3 50.22a4 4 0 0 0 2.39-5.127l-5.842-16.052a4 4 0 0 0-5.127-2.39L42.67 32.492ZM46.944 15a5 5 0 1 0 0-10 5 5 0 0 0 0 10Zm0 5c5.523 0 10-4.477 10-10s-4.477-10-10-10-10 4.477-10 10 4.477 10 10 10ZM15.918 15.454l11.178 6.453c5.333 3.08 5.333 10.777 0 13.857l-11.178 6.453c-5.334 3.08-12-.77-12-6.928V22.382c0-6.159 6.666-10.008 12-6.928Zm-3 5.196c-1.334-.77-3 .192-3 1.732v12.907c0 1.54 1.666 2.502 3 1.732l11.178-6.454c1.333-.77 1.333-2.694 0-3.464L12.918 20.65Z"
        fill="#C312D3"
      />
    </svg>
    """
  end

  @doc """
  Renders the SVG for decorative dots at the specified size. These are purely decoration.

  Note that the sizes do not evenly scale, and there are varying amounts of dots depending on the size. See the Figma mock-ups for usage.

  # Examples

      <.dots size="xs" />
      <.dots size="sm" />
      <.dots size="md" />
      <.dots size="lg" />
      <.dots size="xl" />
  """
  attr :size, :string,
    required: true,
    values: ["xs", "sm", "md", "lg", "xl"],
    doc: "Size option to display"

  def dots(%{:size => "xs"} = assigns) do
    ~H"""
    <svg
      class="dots"
      aria-hidden="true"
      width="24"
      height="41"
      viewBox="0 0 24 41"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <circle cx="4" cy="4.5" r="4" fill="#C312D3" /> <circle cx="20" cy="4.5" r="4" fill="#C312D3" />
      <circle cx="4" cy="20.5" r="4" fill="#C312D3" />
      <circle cx="20" cy="20.5" r="4" fill="#C312D3" />
      <circle cx="4" cy="36.5" r="4" fill="#C312D3" />
      <circle cx="20" cy="36.5" r="4" fill="#C312D3" />
    </svg>
    """
  end

  def dots(%{:size => "sm"} = assigns) do
    ~H"""
    <svg
      class="dots"
      aria-hidden="true"
      width="105"
      height="75"
      viewBox="0 0 105 75"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <circle cx="7.5" cy="7.5" r="7.5" fill="#C312D3" />
      <circle cx="37.5" cy="7.5" r="7.5" fill="#C312D3" />
      <circle cx="67.5" cy="7.5" r="7.5" fill="#C312D3" />
      <circle cx="97.5" cy="7.5" r="7.5" fill="#C312D3" />
      <circle cx="7.5" cy="37.5" r="7.5" fill="#C312D3" />
      <circle cx="37.5" cy="37.5" r="7.5" fill="#C312D3" />
      <circle cx="67.5" cy="37.5" r="7.5" fill="#C312D3" />
      <circle cx="97.5" cy="37.5" r="7.5" fill="#C312D3" />
      <circle cx="7.5" cy="67.5" r="7.5" fill="#C312D3" />
      <circle cx="37.5" cy="67.5" r="7.5" fill="#C312D3" />
      <circle cx="67.5" cy="67.5" r="7.5" fill="#C312D3" />
      <circle cx="97.5" cy="67.5" r="7.5" fill="#C312D3" />
    </svg>
    """
  end

  def dots(%{:size => "md"} = assigns) do
    ~H"""
    <svg
      class="dots"
      aria-hidden="true"
      width="140"
      height="180"
      viewBox="0 0 140 180"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <circle cx="10" cy="10" r="10" fill="#BF12CE" /><circle cx="50" cy="10" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="10"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="10" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="50" r="10" fill="#BF12CE" /><circle cx="90" cy="50" r="10" fill="#BF12CE" /><circle
        cx="130"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="10" cy="90" r="10" fill="#BF12CE" /><circle cx="50" cy="90" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="90"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="90" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="130"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="130" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="130"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="130" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="170"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="170" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="170"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="170" r="10" fill="#BF12CE" />
    </svg>
    """
  end

  def dots(%{:size => "lg"} = assigns) do
    ~H"""
    <svg
      class="dots"
      aria-hidden="true"
      width="340"
      height="100"
      viewBox="0 0 340 100"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <circle cx="10" cy="10" r="10" fill="#BF12CE" /><circle cx="50" cy="10" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="10"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="10" r="10" fill="#BF12CE" /><circle
        cx="170"
        cy="10"
        r="10"
        fill="#BF12CE"
      /><circle cx="210" cy="10" r="10" fill="#BF12CE" /><circle
        cx="250"
        cy="10"
        r="10"
        fill="#BF12CE"
      /><circle cx="290" cy="10" r="10" fill="#BF12CE" /><circle
        cx="330"
        cy="10"
        r="10"
        fill="#BF12CE"
      /><circle cx="10" cy="50" r="10" fill="#BF12CE" /><circle cx="50" cy="50" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="50" r="10" fill="#BF12CE" /><circle
        cx="170"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="210" cy="50" r="10" fill="#BF12CE" /><circle
        cx="250"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="290" cy="50" r="10" fill="#BF12CE" /><circle
        cx="330"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="10" cy="90" r="10" fill="#BF12CE" /><circle cx="50" cy="90" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="90"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="90" r="10" fill="#BF12CE" /><circle
        cx="170"
        cy="90"
        r="10"
        fill="#BF12CE"
      /><circle cx="210" cy="90" r="10" fill="#BF12CE" /><circle
        cx="250"
        cy="90"
        r="10"
        fill="#BF12CE"
      /><circle cx="290" cy="90" r="10" fill="#BF12CE" /><circle
        cx="330"
        cy="90"
        r="10"
        fill="#BF12CE"
      />
    </svg>
    """
  end

  def dots(%{:size => "xl"} = assigns) do
    ~H"""
    <svg
      class="dots"
      aria-hidden="true"
      width="140"
      height="260"
      viewBox="0 0 140 260"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
    >
      <circle cx="10" cy="10" r="10" fill="#BF12CE" /><circle cx="50" cy="10" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="10"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="10" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="50" r="10" fill="#BF12CE" /><circle cx="90" cy="50" r="10" fill="#BF12CE" /><circle
        cx="130"
        cy="50"
        r="10"
        fill="#BF12CE"
      /><circle cx="10" cy="90" r="10" fill="#BF12CE" /><circle cx="50" cy="90" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="90"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="90" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="130"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="130" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="130"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="130" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="170"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="170" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="170"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="170" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="210"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="210" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="210"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="210" r="10" fill="#BF12CE" /><circle
        cx="10"
        cy="250"
        r="10"
        fill="#BF12CE"
      /><circle cx="50" cy="250" r="10" fill="#BF12CE" /><circle
        cx="90"
        cy="250"
        r="10"
        fill="#BF12CE"
      /><circle cx="130" cy="250" r="10" fill="#BF12CE" />
    </svg>
    """
  end
end

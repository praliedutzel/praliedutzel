defmodule PraliedutzelWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use PraliedutzelWeb, :html

  import PraliedutzelWeb.SharedLinks

  embed_templates "page_html/*"

  defp skills(),
    do: [
      gettext("intuitive user experiences"),
      gettext("design systems"),
      gettext("component libraries"),
      gettext("accessible user interfaces"),
      gettext("robust front-end solutions"),
      gettext("responsive websites"),
      gettext("multi-brand themes"),
      gettext("enterprise level tools")
    ]

  defp brands(),
    do: [
      %{:name => "polaris", :display_name => "Polaris"},
      %{:name => "joydrive", :display_name => "Joydrive"},
      %{:name => "subaru", :display_name => "Subaru"},
      %{:name => "vrbo", :display_name => "Vrbo"},
      %{:name => "expedia-group", :display_name => "Expedia Group"},
      %{:name => "pxg", :display_name => "PXG"}
    ]

  defp fav_tools(),
    do: [
      "Figma",
      "CSS",
      "Sass",
      "Elixir",
      "Phoenix"
    ]

  defp conversation_starters(),
    do: [
      gettext("video games"),
      gettext("corgis"),
      gettext("hockey"),
      gettext("baseball"),
      gettext("Zelda"),
      gettext("Pokemon"),
      gettext("Studio Ghibli"),
      gettext("drawing"),
      gettext("baking")
    ]
end

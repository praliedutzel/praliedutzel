defmodule Praliedutzel.CaseStudiesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Praliedutzel.CaseStudies` context.
  """

  @doc """
  Generate a case_study.
  """
  def case_study_fixture(attrs \\ %{}) do
    {:ok, case_study} =
      attrs
      |> Enum.into(%{
        callout: "nda",
        client: "some client",
        contributions: ["UI/UX design", "Front-end development"],
        features: ["option1", "option2"],
        goal: "some goal",
        link: "",
        slug: "some-slug",
        tags: ["UX design", "Elixir development"],
        teaser_text: "some teaser_text",
        title: "some title",
        tools: ["Figma", "Elixir"]
      })
      |> Praliedutzel.CaseStudies.create_case_study()

    case_study
  end
end

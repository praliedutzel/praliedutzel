defmodule Praliedutzel.CaseStudiesTest do
  use Praliedutzel.DataCase

  alias Praliedutzel.CaseStudies

  describe "case_studies" do
    import Praliedutzel.CaseStudiesFixtures

    test "list_case_studies/0 returns all case_studies" do
      case_study = case_study_fixture()
      assert CaseStudies.list_case_studies() == [case_study]
    end

    test "get_case_study!/1 returns the case_study with given slug" do
      case_study = case_study_fixture()
      assert CaseStudies.get_case_study!(case_study.slug) == case_study
    end
  end
end

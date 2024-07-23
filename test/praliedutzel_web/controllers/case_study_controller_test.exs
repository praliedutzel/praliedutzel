defmodule PraliedutzelWeb.CaseStudyControllerTest do
  use PraliedutzelWeb.ConnCase

  describe "index" do
    test "lists all case studies", %{conn: conn} do
      conn = get(conn, ~p"/case-studies")
      assert html_response(conn, 200) =~ "Case Studies"
    end
  end
end

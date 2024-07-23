defmodule PraliedutzelWeb.PageControllerTest do
  use PraliedutzelWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, ~p"/")
    assert html_response(conn, 200) =~ "Hi there!"
  end

  test "GET /about", %{conn: conn} do
    conn = get(conn, ~p"/about")
    assert html_response(conn, 200) =~ "About Pralie Dutzel"
  end
end

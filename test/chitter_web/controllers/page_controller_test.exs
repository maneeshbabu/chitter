defmodule ChitterWeb.PageControllerTest do
  use ChitterWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "CHITTER"
  end
end

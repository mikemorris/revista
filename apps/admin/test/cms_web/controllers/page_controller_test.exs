defmodule Admin.PageControllerTest do
  use Admin.ConnCase

  setup do
    Ecto.Adapters.SQL.Sandbox.checkout(CMS.Repo)
  end

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Posts"
  end
end
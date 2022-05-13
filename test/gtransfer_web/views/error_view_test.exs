defmodule GtransferWeb.ErrorViewTest do
  use GtransferWeb.ConnCase, async: true

  import Phoenix.View

  @moduletag :unit

  test "renders 404.html" do
    assert render_to_string(GtransferWeb.ErrorView, "404.html", []) == "Not Found"
  end

  test "renders 500.html" do
    assert render_to_string(GtransferWeb.ErrorView, "500.html", []) == "Internal Server Error"
  end
end

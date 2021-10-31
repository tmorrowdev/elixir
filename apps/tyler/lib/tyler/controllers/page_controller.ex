defmodule Tyler.PageController do
  use Tyler, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

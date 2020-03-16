defmodule SolventWeb.PageController do
  use SolventWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule LiveViewEspecWeb.PageController do
  use LiveViewEspecWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

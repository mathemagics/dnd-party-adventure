defmodule DndPartyAdventure.PageController do
  use DndPartyAdventure.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

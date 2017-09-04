defmodule DndPartyAdventure.CampaignController do
  use DndPartyAdventure.Web, :controller
  alias DndPartyAdventure.Campaign

  def index(conn, _params) do
    campaigns = Repo.all(Campaign)
    render conn, "index.json", campaigns: campaigns
  end

end
defmodule DndPartyAdventure.CampaignController do
  use DndPartyAdventure.Web, :controller
  alias DndPartyAdventure.Campaign

  def index(conn, _params) do
    campaigns = Repo.all(Campaign)
    render conn, "index.json", campaigns: campaigns
  end

  def show(conn, %{"id" => campaign_id}) do
    campaign = Repo.get!(Campaign, campaign_id)
    render conn, "show.json", campaign: campaign
  end

end
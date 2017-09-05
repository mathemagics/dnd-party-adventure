defmodule DndPartyAdventure.CampaignView do
  use DndPartyAdventure.Web, :view

  def render("index.json", %{campaigns: campaigns}) do
    %{
      campaigns: Enum.map(campaigns, &campaign_json/1)
    }
  end

  def render("show.json", %{campaign: campaign}) do
    %{campaign: campaign_json(campaign)}
  end

  defp campaign_json(campaign) do
    %{
      title: campaign.title,
      description: campaign.description,
      inserted_at: campaign.inserted_at,
      updated_at: campaign.updated_at
    }
  end

end
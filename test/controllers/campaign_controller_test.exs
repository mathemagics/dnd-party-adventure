defmodule DndPartyAdventure.CampaignControllerTest do
  use DndPartyAdventure.ConnCase

  test "#index renders a list of campaigns" do
    conn = build_conn()
    campaign = insert(:campaign)

    conn = get conn, campaign_path(conn, :index)

    assert json_respons(conn, 200) == %{
      "campaigns" => [%{
        "title" => campaign.title,
        "description" => campaign.description,
        "inserted_at" => Ecto.DateTime.to_iso8601(campaign.inserted_at),
        "updated_at" => Ecto.DateTime.to_iso8601(campaign.updated_at)
      }]
    }
  end

end
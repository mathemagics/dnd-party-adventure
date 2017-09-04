defmodule DndPartyAdventure.CampaignControllerTest do
  use DndPartyAdventure.ConnCase
  import DndPartyAdventure.Factory
  test "#index renders a list of campaigns" do
    conn = build_conn()
    campaign = insert(:campaign)

    conn = get conn, campaign_path(conn, :index)

    casted_inserted = Ecto.DateTime.cast!(campaign.inserted_at)
    casted_updated = Ecto.DateTime.cast!(campaign.updated_at)

    assert json_response(conn, 200) == %{
      "campaigns" => [%{
        "title" => campaign.title,
        "description" => campaign.description,
        "inserted_at" => Ecto.DateTime.to_iso8601(casted_inserted),
        "updated_at" => Ecto.DateTime.to_iso8601(casted_updated)
      }]
    }
  end

end
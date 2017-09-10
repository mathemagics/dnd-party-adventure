defmodule DndPartyAdventure.CampaignController do
  use DndPartyAdventure.Web, :controller
  alias DndPartyAdventure.{Campaign, ErrorView}
  alias Plug.Conn

  def index(conn, _params) do
    campaigns = Repo.all(Campaign)
    render conn, "index.json", campaigns: campaigns
  end

  def show(conn, %{"id" => campaign_id}) do
    campaign = Repo.get!(Campaign, campaign_id)
    render conn, "show.json", campaign: campaign
  end

  def create(conn, params) do
    changeset = Campaign.changeset(%Campaign{}, params)
    case Repo.insert(changeset) do
      {:ok, campaign} ->
        conn
        |> Conn.put_status(201)
        |> render("show.json", campaign: campaign)
      {:error, %{errors: errors}} ->
        conn
        |> put_status(422)
        |> render(ErrorView, "422.json", %{errors: errors})
    end
  end

end
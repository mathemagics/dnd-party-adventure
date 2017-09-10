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

  def create(conn, %{"campaign" => campaign}) do
    changeset = Campaign.changeset(%Campaign{}, campaign)
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

  def update(conn, %{"id" => campaign_id, "campaign" => campaign}) do
    previous = Repo.get!(Campaign, campaign_id)
    changeset = Campaign.changeset(previous, campaign)
    case Repo.update(changeset) do
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
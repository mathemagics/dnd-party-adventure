defmodule DndPartyAdventure.Router do
  use DndPartyAdventure.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # Other scopes may use custom stacks.
  scope "/api", DndPartyAdventure do
    pipe_through :api
    resources "/campaigns", CampaignController, only: [:index, :show, :create, :update]
  end
end

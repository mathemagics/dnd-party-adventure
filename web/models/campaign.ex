defmodule DndPartyAdventure.Campaign do
  use DndPartyAdventure.Web, :model

  schema "campaigns" do
    field :title
    field :description
    timestamps()
  end

end
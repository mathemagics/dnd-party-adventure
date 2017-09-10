defmodule DndPartyAdventure.Campaign do
  use DndPartyAdventure.Web, :model

  schema "campaigns" do
    field :title
    field :description
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description])
    |> validate_required([:title, :description])
  end

end
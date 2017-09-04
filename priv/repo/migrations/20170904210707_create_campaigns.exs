defmodule DndPartyAdventure.Repo.Migrations.CreateCampaigns do
  use Ecto.Migration

  def change do
    create table(:campaigns) do
      add :title, :string
      add :description, :string
    end
  end
end

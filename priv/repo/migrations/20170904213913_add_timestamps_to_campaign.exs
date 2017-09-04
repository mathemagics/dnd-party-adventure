defmodule DndPartyAdventure.Repo.Migrations.AddTimestampsToCampaign do
  use Ecto.Migration

  def change do
    alter table(:campaigns) do
      timestamps()
    end
  end
end

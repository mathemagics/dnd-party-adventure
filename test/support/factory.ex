defmodule DndPartyAdventure.Factory do
  use ExMachina.Ecto, repo: DndPartyAdventure.Repo

    def campaign_factory do
      %DndPartyAdventure.Campaign{
        title: "Sword Coast Example",
        description: "A Sample of a Universe"
      }
    end
end
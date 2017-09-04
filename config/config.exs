# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dnd_party_adventure,
  ecto_repos: [DndPartyAdventure.Repo]

# Configures the endpoint
config :dnd_party_adventure, DndPartyAdventure.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tcDieGYZWSKuwkLTVSvRi6QUY/Rlk70WKwPXFIhz6pQRq05lhE/SsoSupWds6ze9",
  render_errors: [view: DndPartyAdventure.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DndPartyAdventure.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

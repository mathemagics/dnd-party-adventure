use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dnd_party_adventure, DndPartyAdventure.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :dnd_party_adventure, DndPartyAdventure.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "pawelek",
  password: "postgres",
  database: "dnd_party_adventure_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

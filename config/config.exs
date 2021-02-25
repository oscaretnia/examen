# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :examen,
  ecto_repos: [Examen.Repo]

# Configures the endpoint
config :examen, ExamenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Yb03nrcpU8qbk8bBokbMxXyXBPVcj6HEWJtJsc7ZyrfXE1P5So8drkmlB9BtFWz5",
  render_errors: [view: ExamenWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Examen.PubSub,
  live_view: [signing_salt: "BDI8M5Wr"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
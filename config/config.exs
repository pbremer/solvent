# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :solvent,
  ecto_repos: [Solvent.Repo]

# Configures the endpoint
config :solvent, SolventWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "82xwumAWgUo61xw74QMwDsUdDMDfP7YSuO68gUD8SLT8bogjWC3+Wa0Y3sUvR/LG",
  render_errors: [view: SolventWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Solvent.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "H4iho44J"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

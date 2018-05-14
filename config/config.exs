# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sagaBetaV3,
  ecto_repos: [SagaBetaV3.Repo]

# Configures the endpoint
config :sagaBetaV3, SagaBetaV3Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dHBHe1qviUjg+8MICJoIIsP+aIIqdg5eYgZsvZCERNyOiaiRoNM6aGM9r0O1ZbM4",
  render_errors: [view: SagaBetaV3Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: SagaBetaV3.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

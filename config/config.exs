# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :taxonomy,
  ecto_repos: [Taxonomy.Repo]

# Configures the endpoint
config :taxonomy, TaxonomyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "X0MlPxZoP3uzAoh+mucvR3k8HPXe6CwMxgJHpFZKBgyLfJJBuVqdSocJcoeO9gYd",
  render_errors: [view: TaxonomyWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Taxonomy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

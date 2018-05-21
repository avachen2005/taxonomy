use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :taxonomy, TaxonomyWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :taxonomy, Taxonomy.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "taxonomy_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
<<<<<<< HEAD
config :sagaBetaV3, SagaBetaV3Web.Endpoint,
=======
config :storyBeta, StoryBetaWeb.Endpoint,
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
<<<<<<< HEAD
config :sagaBetaV3, SagaBetaV3.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "sagabetav3_test",
=======
config :storyBeta, StoryBeta.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "storybeta_test",
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

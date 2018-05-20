<<<<<<< HEAD
defmodule SagaBetaV3.Mixfile do
=======
defmodule StoryBeta.Mixfile do
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
  use Mix.Project

  def project do
    [
<<<<<<< HEAD
      app: :sagaBetaV3,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
=======
      app: :storyBeta,
      version: "0.0.1",
      elixir: "~> 1.4",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,

>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
      aliases: aliases(),
      deps: deps()
    ]
  end
<<<<<<< HEAD

=======
#  paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
<<<<<<< HEAD
      mod: {SagaBetaV3.Application, []},
=======
      mod: {StoryBeta.Application, []},
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
      extra_applications: [:logger, :runtime_tools]
    ]
  end

<<<<<<< HEAD
  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

=======
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.3.2"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.2"},
      {:postgrex, ">= 0.0.0"},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:absinthe, "~> 1.4"},
      {:absinthe_plug, "~> 1.4"},
<<<<<<< HEAD
      {:absinthe_ecto, " > 0.0.0"}
=======
      {:absinthe_ecto, ">= 0.0.0"},
      
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
<<<<<<< HEAD
      test: ["ecto.create --quiet", "ecto.migrate", "test"]
=======
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
    ]
  end
end

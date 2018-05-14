defmodule SagaBetaV3Web.Router do
  use SagaBetaV3Web, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", SagaBetaV3Web do
    pipe_through(:api)

    forward("/graphql", Absinthe.Plug, schema: SagaBetaV3Web.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: SagaBetaV3Web.Schema)
    end
  end
end

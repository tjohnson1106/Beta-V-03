defmodule SagaBetaV3Web.Router do
  use SagaBetaV3Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SagaBetaV3Web do
    pipe_through :api
  end
end

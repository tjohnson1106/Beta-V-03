defmodule StoryBetaWeb.Router do
  use StoryBetaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
    schema: StoryBetaWeb.Schema

     if Mix.env == :dev do
     forward "/graphiql", Absinthe.Plug.GraphiQL, 
     schema: StoryBetaWeb.Schema
   end
  end
end

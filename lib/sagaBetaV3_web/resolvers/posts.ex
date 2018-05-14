defmodule SagaBetaV3Web.Resolvers.Post do
  def photos() do
    {:ok, SagaBetaV3.Posts.list_photos}
  end
end

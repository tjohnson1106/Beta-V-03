defmodule StoryBetaWeb.Resolvers.Posts do

def photos(_, _, _) do

{:ok, StoryBeta.Posts.list_photos}

  end    
end
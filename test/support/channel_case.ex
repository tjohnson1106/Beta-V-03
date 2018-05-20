<<<<<<< HEAD
defmodule SagaBetaV3Web.ChannelCase do
=======
defmodule StoryBetaWeb.ChannelCase do
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
  @moduledoc """
  This module defines the test case to be used by
  channel tests.

  Such tests rely on `Phoenix.ChannelTest` and also
  import other functionality to make it easier
  to build common datastructures and query the data layer.

  Finally, if the test case interacts with the database,
  it cannot be async. For this reason, every test runs
  inside a transaction which is reset at the beginning
  of the test unless the test case is marked as async.
  """

  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with channels
      use Phoenix.ChannelTest

      # The default endpoint for testing
<<<<<<< HEAD
      @endpoint SagaBetaV3Web.Endpoint
=======
      @endpoint StoryBetaWeb.Endpoint
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
    end
  end


  setup tags do
<<<<<<< HEAD
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(SagaBetaV3.Repo)
    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(SagaBetaV3.Repo, {:shared, self()})
=======
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(StoryBeta.Repo)
    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(StoryBeta.Repo, {:shared, self()})
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
    end
    :ok
  end

end

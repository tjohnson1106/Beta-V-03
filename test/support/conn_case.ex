<<<<<<< HEAD
defmodule SagaBetaV3Web.ConnCase do
=======
defmodule StoryBetaWeb.ConnCase do
>>>>>>> d56f3c5fa6389bf65331331d54945619585cf187
  @moduledoc """
  This module defines the test case to be used by
  tests that require setting up a connection.

  Such tests rely on `Phoenix.ConnTest` and also
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
      # Import conveniences for testing with connections
      use Phoenix.ConnTest
<<<<<<< HEAD
      import SagaBetaV3Web.Router.Helpers

      # The default endpoint for testing
      @endpoint SagaBetaV3Web.Endpoint
=======
      import StoryBetaWeb.Router.Helpers

      # The default endpoint for testing
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
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end

end

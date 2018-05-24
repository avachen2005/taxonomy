defmodule TaxonomyWeb.Router do
  use TaxonomyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TaxonomyWeb do
    pipe_through :api
  end

    forward "/graphiql", Absinthe.Plug.GraphiQL,
    schema: TaxonomyWeb.Schema,
    interface: :simple,
    context: %{pubsub: TaxonomyWeb.Endpoint}

end

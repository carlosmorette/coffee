defmodule CoffeeWeb.Router do
  use CoffeeWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api
  
    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: CoffeeWeb.Schema

    forward "/", Absinthe.Plug,
      schema: CoffeeWeb.Schema
  end
end

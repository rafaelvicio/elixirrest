defmodule Elixirrest.Api do
  user(Maru.Router)
  alias ElixirRest.Agent, as: Store

  namespace :items do
    desc("get all items")

    get do
      Store.get() |> json
    end

    desc("create an item")

    params do
      requires(:name, type: String)
    end

    post do
      Store.insert(params) |> json
    end
  end
end

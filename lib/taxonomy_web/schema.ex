defmodule TaxonomyWeb.Schema do

  use Absinthe.Schema

  object :entity do
    field :id, non_null(:integer)
    field :key, non_null(:string)
    field :description, non_null(:string)
  end

  query do
    field :all_entities, non_null(list_of(non_null(:entity)))
  end
end
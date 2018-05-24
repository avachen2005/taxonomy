defmodule TaxonomyWeb.Schema do

  use Absinthe.Schema
  alias TaxonomyWeb.EntityResolver

  enum :sort_order do
    value :asc
    value :desc
  end

  object :entity do
    field :id, non_null(:integer)
    field :key, non_null(:string)
    field :description, non_null(:string)
    field :type, non_null(:integer)
  end

  query do
    field :all_entities, non_null(list_of(non_null(:entity))) do
      resolve &EntityResolver.all_entities/3
    end
  end

  mutation do

    field :create_entity, :entity do
      arg :key, non_null(:string)
      arg :description, non_null(:string)
      arg :type, non_null(:integer)

      resolve &EntityResolver.create_entity/3
    end

  end

end
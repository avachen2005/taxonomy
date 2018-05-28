defmodule TaxonomyWeb.Schema do

  use Absinthe.Schema
  alias TaxonomyWeb.EntityResolver
  import_types __MODULE__.EntityTypes

  query do
    field :all_entities, non_null(list_of(non_null(:entity))) do

      arg :matching, :string

      resolve &EntityResolver.entities/3
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
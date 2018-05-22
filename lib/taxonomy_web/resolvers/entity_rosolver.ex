defmodule TaxonomyWeb.EntityResolver do

  alias Taxonomy.V1
  alias Taxonomy.V1.Entity

  def all_entities(_root, _args, _info) do
    entities = V1.list_entities()
    {:ok, entities}
  end

  def create_entity(_root, args, _info) do


    V1.create_entity(args)
  end
end
defmodule TaxonomyWeb.EntityResolver do

  alias Taxonomy.V1
  alias Taxonomy.V1.Entity

  def entities(_root, args, _info) do
    {:ok, Entity.list_entities(args)}
  end

  def create_entity(_root, args, _info) do
    V1.create_entity(args)
  end

end
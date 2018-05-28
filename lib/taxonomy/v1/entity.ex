defmodule Taxonomy.V1.Entity do
  use Ecto.Schema
  import Ecto.Changeset


  schema "entities" do
    field :created_at, :integer
    field :deleted_at, :integer
    field :description, :string
    field :key, :string
    field :order, :integer
    field :parent_id, :integer
    field :type, :integer
    field :updated_at, :integer
  end

  @doc false
  def changeset(entity, attrs) do
    entity
    |> cast(attrs, [:key, :description, :parent_id, :type, :order, :created_at, :updated_at, :deleted_at])
    |> validate_required([:key, :type])
  end

end

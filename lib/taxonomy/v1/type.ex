defmodule Taxonomy.V1.Type do
  use Ecto.Schema
  import Ecto.Changeset


  schema "types" do
    field :created_at, :integer
    field :deleted_at, :integer
    field :description, :string
    field :name, :string
    field :updated_at, :integer
  end

  @doc false
  def changeset(type, attrs) do
    type
    |> cast(attrs, [:name, :description, :created_at, :updated_at, :deleted_at])
    |> validate_required([:name])
  end
end

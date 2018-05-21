defmodule Taxonomy.Repo.Migrations.CreateTypes do
  use Ecto.Migration

  def change do
    create table(:types) do
      add :name, :string
      add :description, :string
      add :created_at, :integer, size: 64
      add :updated_at, :integer, size: 64
      add :deleted_at, :integer, size: 64
    end

    create table(:entities) do
      add :key, :string
      add :description, :string
      add :parent_id, :integer
      add :type, :integer
      add :order, :integer
      add :created_at, :integer, size: 64
      add :updated_at, :integer, size: 64
      add :deleted_at, :integer, size: 64
    end

  end
end
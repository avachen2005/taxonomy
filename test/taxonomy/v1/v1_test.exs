defmodule Taxonomy.V1Test do
  use Taxonomy.DataCase

  alias Taxonomy.V1

  describe "types" do
    alias Taxonomy.V1.Type

    @valid_attrs %{created_at: 42, deleted_at: 42, description: "some description", name: "some name", updated_at: 42}
    @update_attrs %{created_at: 43, deleted_at: 43, description: "some updated description", name: "some updated name", updated_at: 43}
    @invalid_attrs %{created_at: nil, deleted_at: nil, description: nil, name: nil, updated_at: nil}

    def type_fixture(attrs \\ %{}) do
      {:ok, type} =
        attrs
        |> Enum.into(@valid_attrs)
        |> V1.create_type()

      type
    end

    test "list_types/0 returns all types" do
      type = type_fixture()
      assert V1.list_types() == [type]
    end

    test "get_type!/1 returns the type with given id" do
      type = type_fixture()
      assert V1.get_type!(type.id) == type
    end

    test "create_type/1 with valid data creates a type" do
      assert {:ok, %Type{} = type} = V1.create_type(@valid_attrs)
      assert type.created_at == 42
      assert type.deleted_at == 42
      assert type.description == "some description"
      assert type.name == "some name"
      assert type.updated_at == 42
    end

    test "create_type/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = V1.create_type(@invalid_attrs)
    end

    test "update_type/2 with valid data updates the type" do
      type = type_fixture()
      assert {:ok, type} = V1.update_type(type, @update_attrs)
      assert %Type{} = type
      assert type.created_at == 43
      assert type.deleted_at == 43
      assert type.description == "some updated description"
      assert type.name == "some updated name"
      assert type.updated_at == 43
    end

    test "update_type/2 with invalid data returns error changeset" do
      type = type_fixture()
      assert {:error, %Ecto.Changeset{}} = V1.update_type(type, @invalid_attrs)
      assert type == V1.get_type!(type.id)
    end

    test "delete_type/1 deletes the type" do
      type = type_fixture()
      assert {:ok, %Type{}} = V1.delete_type(type)
      assert_raise Ecto.NoResultsError, fn -> V1.get_type!(type.id) end
    end

    test "change_type/1 returns a type changeset" do
      type = type_fixture()
      assert %Ecto.Changeset{} = V1.change_type(type)
    end
  end

  describe "entities" do
    alias Taxonomy.V1.Entity

    @valid_attrs %{created_at: 42, deleted_at: 42, description: "some description", key: "some key", order: 42, parent_id: 42, type: 42, updated_at: 42}
    @update_attrs %{created_at: 43, deleted_at: 43, description: "some updated description", key: "some updated key", order: 43, parent_id: 43, type: 43, updated_at: 43}
    @invalid_attrs %{created_at: nil, deleted_at: nil, description: nil, key: nil, order: nil, parent_id: nil, type: nil, updated_at: nil}

    def entity_fixture(attrs \\ %{}) do
      {:ok, entity} =
        attrs
        |> Enum.into(@valid_attrs)
        |> V1.create_entity()

      entity
    end

    test "list_entities/0 returns all entities" do
      entity = entity_fixture()
      assert V1.list_entities() == [entity]
    end

    test "get_entity!/1 returns the entity with given id" do
      entity = entity_fixture()
      assert V1.get_entity!(entity.id) == entity
    end

    test "create_entity/1 with valid data creates a entity" do
      assert {:ok, %Entity{} = entity} = V1.create_entity(@valid_attrs)
      assert entity.created_at == 42
      assert entity.deleted_at == 42
      assert entity.description == "some description"
      assert entity.key == "some key"
      assert entity.order == 42
      assert entity.parent_id == 42
      assert entity.type == 42
      assert entity.updated_at == 42
    end

    test "create_entity/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = V1.create_entity(@invalid_attrs)
    end

    test "update_entity/2 with valid data updates the entity" do
      entity = entity_fixture()
      assert {:ok, entity} = V1.update_entity(entity, @update_attrs)
      assert %Entity{} = entity
      assert entity.created_at == 43
      assert entity.deleted_at == 43
      assert entity.description == "some updated description"
      assert entity.key == "some updated key"
      assert entity.order == 43
      assert entity.parent_id == 43
      assert entity.type == 43
      assert entity.updated_at == 43
    end

    test "update_entity/2 with invalid data returns error changeset" do
      entity = entity_fixture()
      assert {:error, %Ecto.Changeset{}} = V1.update_entity(entity, @invalid_attrs)
      assert entity == V1.get_entity!(entity.id)
    end

    test "delete_entity/1 deletes the entity" do
      entity = entity_fixture()
      assert {:ok, %Entity{}} = V1.delete_entity(entity)
      assert_raise Ecto.NoResultsError, fn -> V1.get_entity!(entity.id) end
    end

    test "change_entity/1 returns a entity changeset" do
      entity = entity_fixture()
      assert %Ecto.Changeset{} = V1.change_entity(entity)
    end
  end
end

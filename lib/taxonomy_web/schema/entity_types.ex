defmodule TaxonomyWeb.Schema.EntityTypes do
	use Absinthe.Schema.Notation	

	object :entity do
		field :id, non_null(:integer)
		field :key, non_null(:string)
		field :description, non_null(:string)
		field :type, non_null(:integer)
	end


end
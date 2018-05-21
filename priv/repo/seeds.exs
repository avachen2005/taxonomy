# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Taxonomy.Repo.insert!(%Taxonomy.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Taxonomy.V1.Type
alias Taxonomy.Repo

utc_time = DateTime.utc_now |> DateTime.to_unix

%Type{name: "vocabulary", description: "vocabulary", updated_at: utc_time, created_at: utc_time}
|> Repo.insert!

%Type{name: "vocabulary", description: "term", updated_at: utc_time, created_at: utc_time}
|> Repo.insert!
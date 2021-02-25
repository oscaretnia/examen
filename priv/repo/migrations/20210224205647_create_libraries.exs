defmodule Examen.Repo.Migrations.CreateLibraries do
  use Ecto.Migration

  def change do
    create table(:libraries) do
      add :name, :string
      add :address, :string
      add :phone, :string
      add :mail, :string
    end
  end
end

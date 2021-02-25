defmodule Examen.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :description, :string
      add :publisher, :string
      add :copies, :integer
      add :author_id, references(:authors)
      add :library_id, references(:library)
    end
  end
end

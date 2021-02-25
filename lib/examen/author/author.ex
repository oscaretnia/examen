defmodule Examen.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field :first_name, :string
    field :last_name, :string
    field :nationality, :string
    has_many :books, Examen.Book
  end

  def changeset(author, params \\ %{}) do
    author
    |> cast(params, [:first__name, :last_name, :nationality])
    |> validate_required([:first__name, :last_name, :nationality])
  end
end

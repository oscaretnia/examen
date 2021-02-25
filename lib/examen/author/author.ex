defmodule Examen.Author do
  use Ecto.Schema

  schema "authors" do
    field :first_name, :string
    field :last_name, :string
    field :nationality, :string
    has_many :books, Examen.Book
  end
end

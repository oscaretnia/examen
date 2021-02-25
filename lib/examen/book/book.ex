defmodule Examen.Book do
  use Ecto.Schema

  schema "books" do
    field :title, :string
    field :description, :string
    field :publisher, :string
    field :copies, :integer
    belongs_to :author, Examen.Author
    belongs_to :library, Examen.Library
  end
end

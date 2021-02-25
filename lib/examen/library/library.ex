defmodule Examen.Library do
  use Ecto.Schema

  schema "libraries" do
    field :name, :string
    field :address, :string
    field :phone, :string
    field :mail, :string
    has_many :books, Examen.Book
  end
end

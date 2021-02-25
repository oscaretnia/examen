defmodule Examen.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :title, :string
    field :description, :string
    field :publisher, :string
    field :copies, :integer
    belongs_to :author, Examen.Author
    belongs_to :library, Examen.Library
  end

  def changeset(book, params \\ %{}) do
    book
    |> cast(params, [:title, :description, :publisher, :copies])
    |> validate_required([:title, :description, :publisher, :copies])
  end
end

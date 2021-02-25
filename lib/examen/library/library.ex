defmodule Examen.Library do
  use Ecto.Schema
  import Ecto.Changeset

  schema "libraries" do
    field :name, :string
    field :address, :string
    field :phone, :string
    field :mail, :string
    has_many :books, Examen.Book
  end

  def changeset(library, params \\ %{}) do
    library
    |> cast(params, [:name, :address, :phone, :mail])
    |> validate_required([:name, :address, :phone, :mail])
  end
end

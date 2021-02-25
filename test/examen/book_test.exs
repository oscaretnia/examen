defmodule Examen.BookTest do
  use Examen.DataCase

  alias Examen.Book
  alias Examen.Repo

  describe "CRUD operations for Book" do

    test "can insert a book with associations" do
      author = insert(:author)
      library = insert(:library)
      params = params_with_assocs(:book, [author: author, library: library])
      book = insert(:book, params)

      assert book != nil
      assert book.author_id == author.id
      assert book.library_id == library.id
    end

    test "can't insert a book without author" do
      library = insert(:library)
      book = %{title: "Algebra Lineal", description: "Description", publisher: "Publisher", copies: 10, library_id: library.id}

      assert %Ecto.Changeset{errors: [author_id: {"can't be blank", [validation: :required]}]} = Book.changeset(%Book{}, book)

    end

    test "can't insert a book without library" do
      author = insert(:author)
      book = %{title: "Algebra Lineal", description: "Description", publisher: "Publisher", copies: 10, author_id: author.id}

      assert %Ecto.Changeset{errors: [library_id: {"can't be blank", [validation: :required]}]} = Book.changeset(%Book{}, book)

    end

    test "can get records inserteds into books" do
      author = insert(:author)
      library = insert(:library)

      cant = 7
      for n <- 1..cant do
        params = params_with_assocs(:book, [author: author, library: library])
        insert(:book, params)
      end

      query = from b in Book,
        join: l in assoc(b, :library),
        select: b,
        preload: [:library]
      records = Repo.all(query)

      IO.inspect records

      assert false


    end

  end

end

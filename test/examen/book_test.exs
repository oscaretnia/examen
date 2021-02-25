defmodule Examen.BookTest do
  use Examen.DataCase

  describe "CRUD operations for Book" do

    test "can insert book" do
      book = params_with_assocs(:book)
      assert book != nil
    end

    test "can insert book with title" do
      book = params_with_assocs(:book, [title: "The Lord of the Rings"])
      assert book.title == "The Lord of the Rings"
    end

    test "can insert a book with associations" do
      author = insert(:author)
      library = insert(:library)
      book = params_with_assocs(:book, [author: author, library: library])

      assert book != nil
      assert book.author_id == author.id
      assert book.library_id == library.id

    end

  end

end

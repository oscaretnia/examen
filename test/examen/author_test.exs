defmodule Examen.AuthorTest do
  use Examen.DataCase
  alias Examen.Author

  describe "CRUD operations for Author" do

    test "can insert a author" do
      author = insert(:author)

      assert author != nil
    end

    test "can insert author" do
      author = insert(:author, [first_name: "Wiliam", nationality: "England"])
      assert author.first_name == "Wiliam"
      assert author.last_name == "Doe"
      assert author.nationality == "England"
    end

    test "can't insert a author without first_name" do

      author = %{last_name: "Shakespeare", nationality: "England"}

      assert_raise ArgumentError, fn ->
        changeset = Examen.Author.changeset(%Examen.Author{}, author)
        Examen.Repo.insert changeset
      end

    end

    test "can get records inserteds into authors" do

      cant = 5
      for n <- 1..cant, do: insert(:author, [first_name: "Author #{n}"])

      query = from a in Author, select: count(a.id)
      records = Examen.Repo.one(query)

      assert cant == records
    end


  end

end

defmodule Examen.AuthorTest do
  use Examen.DataCase

  describe "CRUD operations for Author" do

    test "can insert author" do
      author = insert(:author, [first_name: "Wiliam", nationality: "England"])
      assert author.first_name == "Wiliam"
      assert author.last_name == "Doe"
      assert author.nationality == "England"
    end

  end

end

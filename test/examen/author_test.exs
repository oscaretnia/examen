defmodule Examen.AuthorTest do
  use Examen.DataCase

  
    test "can insert author" do
      author = insert(:author, [first_name: "Wiliam"])
      assert author.first_name == "Wiliam"
    end
end

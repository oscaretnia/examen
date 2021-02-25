defmodule Examen.LibraryTest do
  use Examen.DataCase

  alias Examen.Library

  describe "CRUD operations for Library" do

    test "can insert a library" do
      library = insert(:library)

      assert library != nil
    end

    test "can insert a library with parameters" do
      library = insert(:library, [name: "Library Republican"])

      assert library != nil
      assert library.name == "Library Republican"
    end

    test "can't insert a library without name" do

      library = %{address: "USA street # 2 -34", phone: "1234567890", mail: "library@library.com"}

      changeset = Library.changeset(%Library{}, library)
      Repo.insert changeset

    end

    test "can get records inserteds into libraries" do

      cant = 10
      for n <- 1..cant, do: insert(:library, [name: "Library #{n}"])

      query = from l in Library, select: count(l.id)
      records = Examen.Repo.one(query)

      assert cant == records
    end

  end

end

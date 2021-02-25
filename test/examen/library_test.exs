defmodule Examen.LibraryTest do
  use Examen.DataCase

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

  end

end

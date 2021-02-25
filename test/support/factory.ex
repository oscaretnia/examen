defmodule Examen.Factory do

  use ExMachina.Ecto, repo: Examen.Repo

  def author_factory do
    %Examen.Author{
      first_name: "John",
      last_name: "Doe",
      nationality: "American"
    }
  end

  def library_factory do
    name = sequence(:name, &"Library #{&1}")
    mail = sequence(:mail, &"email-#{&1}@example.com")
    %Examen.Library{
      name: name,
      address: "Address library",
      phone: "1234567890",
      mail: mail
    }
  end

  def book_factory do
    title = sequence(:title, &"Book #{&1}")
    description = sequence(:description, &"Description Book #{&1}")
    %Examen.Book{
      title: title,
      description: description,
      publisher: "Publisher American",
      copies: 10,
      # associations are inserted when you call `insert`
      author_id: build(:author),
      library_id: build(:library)
    }
  end

end

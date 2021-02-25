defmodule Example.Factory do
  # with Ecto
  use ExMachina.Ecto, repo: MyApp.Repo

  def author_factory do
    %Example.Author{
      first_name: "John",
      last_name: "Doe",
      nationality: "American"
    }
  end

  def library_factory do
    name = sequence(:name, &"Library #{&1}")
    email = sequence(:email, &"email-#{&1}@example.com")
    %Example.Library{
      name: name,
      address: "Address library",
      phone: "1234567890",
      email: email
    }
  end

  def book_factory do
    title = sequence(:title, &"Book #{&1}")
    description = sequence(:description, &"Description Book #{&1}")
    %MyApp.Book{
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
require 'rails_helper'

RSpec.describe Book, type: :model do
  it "creates new books with correct fields" do
    Book.create(isbn:'9780409337419',title:'Queensland Evidence Law',description:nil,image_link:'http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',authors:'David Field')
    expect(Book.first.isbn).to eq('9780409337419')
    expect(Book.first.title).to eq('Queensland Evidence Law')
    expect(Book.first.description).to eq(nil)
    expect(Book.first.image_link).to eq('http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api')
    expect(Book.first.authors).to eq('David Field')
  end
end

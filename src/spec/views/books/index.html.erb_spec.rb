require 'rails_helper'

RSpec.describe "books/index", type: :view do
  let(:book) {
    Book.create(isbn:'9780409337419',title:'Queensland Evidence Law',description:nil,image_link:'http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',authors:'David Field')
  }
  
  before(:each) do
    assign(:books, [book])
  end

  it "renders a list of books" do
    render
  end
end

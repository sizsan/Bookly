require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    user = User.create(email:'susan@example.com',username:'susankey',firstname:'Susan',lastname:'Key')
    assign(:books, [
      Book.create!(isbn:'9780409337419',title:'Queensland Evidence Law',description:nil,image_link:'http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',authors:'David Field'),
      Book.create!(isbn:'9780409337419',title:'Queensland Evidence Law',description:nil,image_link:'http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',authors:'David Field')
    ])
  end

  it "renders a list of books" do
    render
  end
end

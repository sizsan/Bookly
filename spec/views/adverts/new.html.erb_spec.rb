require 'rails_helper'

RSpec.describe "adverts/new", type: :view do
  let(:book) {
    Book.create( isbn:'9780409337419',title:'Queensland Evidence Law',description:nil,image_link:'http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',authors:'David Field')
  }

  let(:user) {
    User.create(email:'susan@example.com',username:'susankey',password: '123testing1',password_confirmation: '123testing1',firstname:'Susan',lastname:'Key')
  }

  let(:advert) {
    Advert.create(price:12.00, condition: 'New', book_id: book.id, seller_id: user.id)
  }

  before(:each) do
    @current_book = assign(:book, book)
    sign_in(user)
    @advert = assign(:advert, advert)
  end

  it "renders new advert form" do
    render
  end
end

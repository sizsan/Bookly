# require 'rails_helper'

# RSpec.describe "adverts/index", type: :view do
#   before(:each) do
#     book = Book.create!(isbn:'9780409337419',title:'Queensland Evidence Law',description:nil,image_link:'http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',authors:'David Field')
#     seller = User.create(email:'susan@example.com',username:'susankey',firstname:'Susan',lastname:'Key')
#     sign_in(seller)
#     assign(:adverts, [
#       Advert.create!(price:12.00,condition:'New',book_id: book.id, seller_id: seller.id),
#       Advert.create!(price:12.00,condition:'New')
#     ])
#   end

#   it "renders a list of adverts" do
#     render
#   end
# end

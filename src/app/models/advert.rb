class Advert < ApplicationRecord
  belongs_to :book
  belongs_to :seller, class_name: "User"
  has_one_attached :cover

  def self.order_by_created
    return Advert.order(:created_at).reverse_order
  end
  
  def self.create_advert(book_id, price, condition, seller_id)
      advert = Advert.new(book_id: book_id, price: price, condition: condition, seller_id: seller_id)
      advert.save!
    return advert
  end
end

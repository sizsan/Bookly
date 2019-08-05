class Advert < ApplicationRecord
  belongs_to :book
  belongs_to :seller, class_name: "User"
  has_one_attached :cover

  def self.order_by_user
    adverts=[]
    Advert.order(:users).each do |user|
      adverts += user.adverts.order(:book_id)
    end
    return adverts
  end

  def self.order_by_price
    return Advert.order(:price)
  end 

  def self.order_by_created
    return Advert.order(:created_at).reverse_order
  end
  
  def self.create_advert(book_id, price, condition, seller_id)
      advert = Advert.new(book_id: book_id, price: price, condition: condition, seller_id: seller_id)
      advert.save!
    return advert
  end
end

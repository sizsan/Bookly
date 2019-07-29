class Advert < ApplicationRecord
  belongs_to :book
  belongs_to :seller, class_name: "User"

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

end

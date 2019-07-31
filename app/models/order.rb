class Order < ApplicationRecord
  belongs_to :advert
  belongs_to :buyer, class_name: "User"

  def self.create_order(advert_id, buyer_id)
    order = Order.new(advert_id: advert_id, buyer_id: buyer_id)
    order.save!
  return order
end
end

class Order < ApplicationRecord
  belongs_to :advert
  belongs_to :buyer, class_name: "User"
end

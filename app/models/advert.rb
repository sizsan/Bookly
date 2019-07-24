class Advert < ApplicationRecord
  belongs_to :book
  belongs_to :seller, class_name: "User"
end

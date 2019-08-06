require 'rails_helper'

RSpec.describe Order, type: :model do
  it "creates new orders with correct fields" do
    order = Order.create(advert_id: 1, buyer_id: 1)
    expect(order.advert_id).to eq(1)
    expect(order.buyer_id).to eq(1)
  end
end

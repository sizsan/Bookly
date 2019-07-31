require 'rails_helper'

RSpec.describe Advert, type: :model do
  it "creates new adverts with correct fields" do
    advert = Advert.create(price:12.00,condition:'New')
    expect(advert.price).to eq(12.00)
    expect(advert.condition).to eq('New')
  end
end

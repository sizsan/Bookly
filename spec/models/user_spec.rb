require 'rails_helper'

RSpec.describe User, type: :model do
  it "creates new adverts with correct fields" do
    user = User.create(email:'susan@example.com',username:'susankey',firstname:'Susan',lastname:'Key')
    expect(user.email).to eq('susan@example.com')
    expect(user.username).to eq('susankey')
    expect(user.firstname).to eq('Susan')
    expect(user.lastname).to eq('Key')
  end
end
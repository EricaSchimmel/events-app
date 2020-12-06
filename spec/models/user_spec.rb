require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  before(:all) do 
    @user1 = create(:user)
  end 

  it "is valid with valid attributes" do 
    expect(@user1).to be_valid 
  end

  it "is valid with a valid email" do 
    user2 = build(:user, email: "test @example.com")

    expect(user2).to_not be_valid 
  end 

  it "is not valid when passwords do not match" do 
    user2 = build(:user, email: Faker::Internet.email, password_confirmation: "sample")

    expect(user2).to_not be_valid
  end 
end

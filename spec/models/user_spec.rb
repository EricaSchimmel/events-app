require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  before(:all) do 
    @user1 = create(:user)
  end 

  it "is valid with valid attributes" do 
    expect(@user1).to be_valid 
  end

  it "is not valid with a invalid email" do 
    user2 = build(:user, email: "test @example.com")

    expect(user2).to_not be_valid 
  end 

  it "is not valid when passwords do not match" do 
    user2 = build(:user, email: Faker::Internet.email, password_confirmation: "sample")

    expect(user2).to_not be_valid
  end 

  it "is not valid without an email" do 
    user2 = build(:user, email: nil)

    expect(user2).to_not be_valid
  end 

  it "is not valid without a password" do 
    user2 = build(:user, email: Faker::Internet.email, password: nil)

    expect(user2).to_not be_valid 
  end 

  it "is not valid without a name" do 
    user2 = build(:user, name: nil, email: Faker::Internet.email, name: nil)

    expect(user2).to_not be_valid
  end 

  it "is valid with a valid name" do 
    user2 = build(:user, email: Faker::Internet.email, name: Faker::Name.first_name)

    expect(user2).to be_valid
  end 

  it "is not valid with a invalid name" do 
    user2 = build(:user, email: Faker::Internet.email, name: "a")
    user3 = build(:user, email: Faker::Internet.email, name: "1Jack")

    expect(user2).to_not be_valid 
    expect(user3).to_not be_valid 
  end 
end

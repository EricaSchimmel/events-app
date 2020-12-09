require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is not valid without a host" do 
    event2 = build(:event, user: nil)

    expect(event2).to_not be_valid 
  end 

  it "is not valid without a title" do 
    event2 = build(:event, title: nil)

    expect(event2).to_not be_valid
  end 
end

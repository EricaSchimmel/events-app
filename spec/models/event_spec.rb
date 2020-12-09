require 'rails_helper'

RSpec.describe Event, type: :model do
  it "is not valid without a host" do 
    event2 = build(:event, host: nil)

    expect(event2).to_not be_valid 
  end 

  it "is not valid without a title" do 
    event2 = build(:event, title: nil)

    expect(event2).to_not be_valid
  end 

  it "is not valid without a description" do 
    event2 = build(:event, description: nil)

    expect(event2).to_not be_valid
  end 

  it "is not valid without a date" do 
    event2 = build(:event, date: nil)

    expect(event2).to_not be_valid
  end 
end

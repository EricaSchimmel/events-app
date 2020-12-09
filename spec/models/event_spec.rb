require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:each) do 
    @event = build(:event)
  end 

  it "is not valid without a host" do 
    @event.host = nil
    expect(@event).to_not be_valid 
  end 

  it "is not valid without a title" do 
    @event.title = nil
    expect(@event).to_not be_valid
  end 

  it "is not valid without a description" do 
    @event.description = nil
    expect(@event).to_not be_valid
  end 

  it "is not valid without a date" do 
    @event.date = nil
    expect(@event).to_not be_valid
  end 
end

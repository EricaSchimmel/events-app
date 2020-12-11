require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { build(:event) }

  describe "validations" do 
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:start_time) }
    it { should_not allow_value(nil).for(:online) } 
  end 

  describe "associations" do 
    it { should belong_to(:host).class_name("User") }
    it { should have_many(:guests).class_name("Reservation") }
  end 
end

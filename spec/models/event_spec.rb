require 'rails_helper'

RSpec.describe Event, type: :model do
  subject { build(:event) }

  describe "validations" do 
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:start_time) }
    it { should_not allow_value(nil).for(:online) } 

    it "is not valid when the event is online and does not supply a link" do 
      subject.online_link = nil 
      expect(subject).to_not be_valid 
    end 

    it "is valid when the event is not online and does not supply a link" do 
      subject.online = false 
      subject.online_link = nil

      expect(subject).to be_valid 
    end 
  end 

  describe "associations" do 
    it { should belong_to(:host).class_name("User") }
    it { should have_many(:guests).through(:resrvation) }
  end 
end

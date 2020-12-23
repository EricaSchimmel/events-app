require 'rails_helper'

RSpec.describe Reservation, type: :model do
  subject { build(:reservation) }

  describe "validations" do 
    it "should be valid when feedback is not given" do 
      subject.review = nil 
      expect(subject).to be_valid
    end 
  end 

  describe "associations" do 
    it { should belong_to(:user) }
    it { should belong_to(:event) }
  end 
end

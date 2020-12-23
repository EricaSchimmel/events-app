require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe "validations" do 
  end 

  describe "associations" do 
    it { should belong_to(:user) }
    it { should belong_to(:event) }
  end 
end

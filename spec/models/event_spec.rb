require 'rails_helper'

RSpec.describe Event, :type => :model do
  subject { build(:event) }

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:start_date) }
    it { should validate_presence_of(:end_date) }
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

    it "is valid with a current or future start date" do
      expect(subject).to be_valid
    end

    it "is not valid with a start date in the past" do
      subject.start_date = DateTime.now - 1
      expect(subject).to_not be_valid
    end

    it "is valid with a current or future end date" do
      expect(subject).to be_valid
    end

    it "is not valid with a end date in the past" do
      subject.end_date = DateTime.now - 1
      expect(subject).to_not be_valid
    end
  end

  describe "associations" do
    it { should belong_to(:host).class_name("User") }
    it { should have_many(:guests).class_name("Reservation") }
  end
end

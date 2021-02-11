require 'rails_helper'

RSpec.describe Reservation, :type => :model do
  describe 'validations' do
    let(:event) { create(:event) }

    it "is valid when an event's guest limit is not reached" do
      reservation = build(:reservation, :event_id => event.id)
      expect(reservation).to be_valid
    end

    it "is invalid when an event's guest limit is reached" do
      3.times do
        create(:reservation, :event_id => event.id)
      end

      reservation = build(:reservation, :event_id => event.id)
      expect(reservation).to_not be_valid
    end

    it 'is invalid when a reservation already exists' do
      user = create(:user)
      create(:reservation, :event_id => event.id, :user_id => user.id)

      reservation = build(:reservation, :event_id => event.id, :user_id => user.id)
      expect(reservation).to_not be_valid
    end

    it 'is invalid when an event has already started' do
      event = build(:event, :start_date => DateTime.now)

      reservation = build(:reservation, :event_id => event.id)
      expect(reservation).to_not be_valid
    end

    it 'is invalid when an event has already ended' do
      event = build(:event, :start_date => DateTime.now - 2, :end_date => DateTime.now - 1)

      reservation = build(:reservation, :event_id => event.id)
      expect(reservation).to_not be_valid
    end

    it 'is invalid when a host tries to reserve to their own event' do
      user = create(:user)
      event = create(:event, :host_id => user.id)

      reservation = build(:reservation, :event_id => event.id, :user_id => user.id)
      expect(reservation).to_not be_valid
    end
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:event).counter_cache(:guests_count) }
  end
end

require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { build(:user) }

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(2).is_at_most(30) }
    it { should allow_value('Mr. Jack').for(:name) }
    it { should_not allow_value('1Jack').for(:name) }

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should allow_value('test_user@example.com').for(:email) }
    it { should_not allow_value('test user@example.com').for(:email) }

    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password).is_at_least(6).is_at_most(128) }
    it { should validate_confirmation_of(:password) }
  end

  describe 'associations' do
    it { should have_many(:hosted_events).class_name('Event').with_foreign_key('host_id') }
    it { should have_many(:reservations) }
  end
end

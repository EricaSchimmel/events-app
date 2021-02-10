class Reservation < ApplicationRecord
  belongs_to :event, :counter_cache => :guests_count
  belongs_to :user

  validate :validate_quota, :on => :create
  validate :validate_existing, :on => :create
  validate :validate_event_host, :on => :create

  def validate_quota
    return unless event && event.guest_limit != 0

    errors.add(:base, 'guest limit reached') if event.guests.reload.size >= event.guest_limit
  end

  def validate_existing
    return unless event && user

    errors.add(:base, 'reservation already created') unless event.guests.find_by(:user_id => user.id).nil?
  end

  def validate_event_host
    return unless event && user

    errors.add(:base, 'event hosts do not need a reservation') if user.id == event.host_id
  end
end

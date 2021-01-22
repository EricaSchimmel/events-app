class Reservation < ApplicationRecord
  belongs_to :event, :counter_cache => :guests_count
  belongs_to :user

  validate :validate_quota, :on => :create

  def validate_quota
    return unless event && !event.guest_limit.nil? && event.guest_limit != 0

    errors.add(:base, 'guest limit reached') if event.guests.reload.size >= event.guest_limit
  end
end

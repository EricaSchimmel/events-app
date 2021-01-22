class Reservation < ApplicationRecord
  belongs_to :event, :counter_cache => :guests_count
  belongs_to :user

  # validate :validate_quota, :on => :create

  # def validate_quota
  #   return unless !self.event.guest_limit.nil? && self.event.guest_limit != 0

  #   if self.event.guests(:reload).size > self.event.guest_limit
  #     errors.add(:base, 'Guest limit reached')
  #   end
  # end
end

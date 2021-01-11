class Reservation < ApplicationRecord
  belongs_to :event, :counter_cache => :guests_count
  belongs_to :user
end

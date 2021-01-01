class Event < ApplicationRecord
  belongs_to :host, :class_name => "User"
  has_many :guests, :class_name => "Reservation"

  validates_presence_of :title, :description, :date, :start_time
  validates :online, :exclusion => [nil]

  validates :online_link, :presence => true, :format => { :with => URI.regexp }, :if => :event_is_online?
  validate :attendee_limit_reached?, :on => :update, :unless => -> { attendee_limit.nil? }

  private

  def event_is_online?
    online == true
  end

  def attendee_limit_reached?
    if attendee_limit <= guests.count
      errors.add(:guests, "limit is reached")
    end
  end
end

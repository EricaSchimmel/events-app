class Event < ApplicationRecord
  belongs_to :host, :class_name => "User"
  has_many :guests, :class_name => "Reservation"

  validates_presence_of :title, :description, :start_date, :end_date
  validates :online, :exclusion => [nil]

  validates_datetime :start_date, on_or_after: :today
  validates_datetime :end_date, after: :start_date

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

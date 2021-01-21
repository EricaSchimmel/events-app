class Event < ApplicationRecord
  belongs_to :host, :class_name => 'User'
  has_many :guests, :class_name => 'Reservation'

  validates_presence_of :start_date, :end_date
  validates :online, :exclusion => [nil]

  validates :title, :presence => true, :length => { :maximum => 75, :minimum => 2 }
  validates :description, :presence => true, :length => { :maximum => 2000 }

  validates_datetime :start_date, :on_or_after => -> { DateTime.now }
  validates_datetime :end_date, :after => :start_date

  validates :online_link, :presence => true, :format => { :with => URI.regexp }, :unless => -> { !online? }
  validate :attendee_limit_reached?, :on => :update, :unless => -> { attendee_limit.nil? }

  private

  def attendee_limit_reached?
    if attendee_limit == guests.size
      errors.add(:guests, 'limit is reached')
    else
      false
    end
  end
end

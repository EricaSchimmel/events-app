class Event < ApplicationRecord
  belongs_to :host, :class_name => "User"

  validates_presence_of :title, :description, :date, :start_time
  validates :online, exclusion: [nil]

  validates :online_link, presence: true, format: { with: URI.regexp }, if: :event_is_online?

  private 

  def event_is_online?
    online == true
  end 
end

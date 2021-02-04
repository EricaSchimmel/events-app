class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :presence => true, :length => { :maximum => 30, :minimum => 2 },
                   :format => { :without => /[^a-zA-Z\s.']/, :message => 'must only contain letters, periods, and apostrophes.' }

  has_many :hosted_events, :class_name => 'Event', :foreign_key => :host_id
  has_many :reservations, :dependent => :delete_all
end

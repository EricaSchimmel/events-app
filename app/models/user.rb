class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validate :valid_name
  validates :name, presence: true, length: { maximum: 30, minimum: 2 }

  has_many :hosted_events, :class_name => "Event", :foreign_key => :host_id

  private 

  def valid_name
    errors.add(:name, "must only contain letters and spaces") if name =~ /[^a-zA-Z\s]/
  end 
end

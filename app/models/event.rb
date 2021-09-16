class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :invitations
  has_many :attendees, through: :invitations, source: :user

  validates :title, presence: true, length: { in: 1..100 }
  validates :description, presence: true, length: { in: 1..10000 }

  scope :past, -> { where("date < ?", Time.current) }
  scope :upcoming, -> { where("date >= ?", Time.current) }
end

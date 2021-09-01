class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  # validates :title, presence: true
  # validates :photo, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  CATEGORIES = ['Adventure', 'Animal', 'Architecture', 'Arts', 'Collectibles', 'Culture', 'Education', 'Food', 'Games', 'Green', 'Handicrafts', 'Music', 'Observation', 'Social']
end

class Activity < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ['Adventure', 'Animal', 'Architecture', 'Arts', 'Collectibles', 'Culture', 'Education', 'Food', 'Games', 'Green', 'Handicrafts', 'Music', 'Observation', 'Social']
end

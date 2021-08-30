class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity, dependent: destroy
end

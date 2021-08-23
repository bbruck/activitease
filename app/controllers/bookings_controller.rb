class BookingsController < ApplicationController
  belongs_to :users
  has_one :activity
end

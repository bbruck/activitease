class UsersController < ApplicationController
  has_many :activities
  has_many :bookings
  has_many :reviews
end

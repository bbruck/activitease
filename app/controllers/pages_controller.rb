class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @activities = Activity.where(user: current_user)
  end

  def accept(booking)
    @booking = Booking.find(booking)
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline(booking)
    @booking = Booking.find(booking)
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
  end


  def save
    @booking.save
  end

end

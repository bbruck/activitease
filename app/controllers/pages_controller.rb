class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @incoming_bookings = Booking.joins(:activity).where(status: "pending", activities: {user: current_user})
    @outgoing_bookings = current_user.bookings
  end

  def accept
    @booking = Booking.find(params[:format])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:format])
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
  end

end

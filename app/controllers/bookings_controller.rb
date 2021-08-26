class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new
    @booking.user_ids = current_user
    @booking.activity_id = Activity.find(params[:activity_id])
    @booking.status = "pending"
    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def save
    @booking.save
  end

end

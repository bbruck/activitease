class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
    @booking.user_id = current_user.id
    @booking.activity_id = @activity.id
    @booking.status = "pending"
    if @booking.save!
      redirect_to activity_path(@activity)
      flash[:notice] = "You succesfully sent a join request"
    else
      render :new
    end
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path
  end

end

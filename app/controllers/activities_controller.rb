class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @activities = Activity.all
    @markers = @activities.geocoded.map do |flat|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }

    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save!
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def save
    @activity.save
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :category, :subcategory, :date_from, :date_to, :adress, :photo)
  end

end

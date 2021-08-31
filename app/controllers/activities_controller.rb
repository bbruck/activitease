class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # raise
    if params[:activity].present?
      if params[:activity][:address].empty?
        @activities = Activity.where(category: params[:activity][:category])
      else
        @activities = Activity.where(category: params[:activity][:category])
        @activities = @activities.near(params[:activity][:address],20)
      end
    else
      @activities = Activity.all
    end
    @markers = @activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window", locals: { activity: activity })
      }
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity = @activity.update(activity_params)
    redirect_to activity_path
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

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :category, :subcategory, :date_from, :date_to, :address, :photo)
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activity = Activity.new
    @categories = ['Adventure', 'Animal', 'Architecture', 'Arts', 'Collectibles', 'Culture', 'Education', 'Food', 'Games', 'Green', 'Handicrafts', 'Music', 'Observation', 'Social']
  end

  def dashboard
  end


end

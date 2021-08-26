class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @activity = Activity.new
    @categories = ['adventure', 'animal', 'architecture', 'arts', 'collectibles', 'culture', 'education', 'food', 'games', 'green', 'handicrafts', 'music', 'observation', 'social']
  end


end

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :initialize_message

  def initialize_message
    @message = Message.new
  end
end

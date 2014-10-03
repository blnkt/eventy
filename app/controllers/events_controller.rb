class EventsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @not_goings = @user.facebook.get_connections("me", "events/not_replied")
    @goings = @user.facebook.get_connections("me", "events/attending")
    @maybes = @user.facebook.get_connections("me", "events/maybe")
  end
end

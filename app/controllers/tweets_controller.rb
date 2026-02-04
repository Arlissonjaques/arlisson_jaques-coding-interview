class TweetsController < ApplicationController
  def index
    user = params[:user_username].present? ? Tweet.by_user(params[:user_username]) : Tweet.all
    
    render json: user 
  end
end

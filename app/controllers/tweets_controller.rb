class TweetsController < ApplicationController
  def index
    @tweet = params[:user_username].present? ? Tweet.by_user(params[:user_username]) : Tweet.all

    render json: paginate(@tweet) 
  end

  private

  def paginate
    @tweet = @tweet.order(created_at: :asc).limit(paginate_params(:per_page))
  end

  def paginate_params
    params.permit(:page, :per_page).with_default(page: 1, per_page: 5)
  end
end

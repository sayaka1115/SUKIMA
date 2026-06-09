class TweetsController < ApplicationController
  def index
      @tweets = Tweet.all
  end

  def new
      @tweet = Tweet.new
  end

  def create
  @tweet = Tweet.new(tweet_params)

  if @tweet.save
    redirect_to tweets_path
  else
    puts @tweet.errors.full_messages
    render :new
  end
end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to :action => "show", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private

 def tweet_params
   params.require(:tweet).permit(
    :deadline,
    :memo,
    :place,
    :title,
    :start_time,
    :end_time,
    :category_id
   )
 end

end

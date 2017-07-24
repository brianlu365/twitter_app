class PagesController < ApplicationController
  before_action :authenticate_user
  def home
    @handle = params[:handle]
    @res = TwitterService.new.latest_tweets(params[:handle]) if params[:handle]
  end
end
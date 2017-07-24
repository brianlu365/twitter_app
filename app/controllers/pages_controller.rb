class PagesController < ApplicationController
  before_action :authenticate_user
  def home
    @res = TwitterService.new.latest_tweets(25, params[:handle]) if params[:handle]
  end
end
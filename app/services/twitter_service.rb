class TwitterService
  attr_reader :twtr_client

  def initialize
    @twtr_client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end
  end

  def latest_tweets(handle, count=25)
    Rails.cache.fetch(handle, expires_in: 5.minutes) do
      twtr_client.user_timeline(handle, count: count)
    end
  end
end
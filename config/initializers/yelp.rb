require 'rubygems'
require 'json'
require 'oauth'

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new('YELP_CONSUMER_KEY', 'YELP_CONSUMER_SECRET_KEY', {:site => "http://#{api_host}"})

path = "/v2/search?term=restaurant&location=new%20york"

access_token = OAuth::AccessToken.new(consumer, 'YELP_TOKEN', 'YELP_TOKEN_SECRET')

@yelp_data = JSON(access_token.get(path).body)

Yelp.client.configure do |config|
 config.consumer_key = ENV['YELP_CONSUMER_KEY']
 config.consumer_secret = ENV['YELP_CONSUMER_SECRET_KEY']
 config.token = ENV['YELP_TOKEN']
 config.token_secret = ENV['YELP_TOKEN_SECRET']
end

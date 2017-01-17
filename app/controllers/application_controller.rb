class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def search_restaurants
  Yelp.client.search('Philadelphia', { term: 'food' })
end
end
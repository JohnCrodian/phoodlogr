class HomeController < ApplicationController
def show
	parameters = { term: params[:search], limit: 20}
	@response = Yelp.client.search('New York', parameters)
	end

	def index
	end
end

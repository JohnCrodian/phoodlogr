class HomeController < ApplicationController
def show
	userzip = current_user.zipcode
	parameters = { term: params[:search], limit: 20}
	@response = Yelp.client.search(userzip, parameters)
	end

	def index
	end
end

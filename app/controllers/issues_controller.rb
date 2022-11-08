class IssuesController < ApplicationController
	def new
	end
	def search; end
	def get_results
		url = "https://comicvine.gamespot.com/api/search/?format=json&api_key=#{ENV['COMICVINE_KEY']}&query=#{search_params['query']}&resources=issue"
		response = RestClient.get(url)
		responseObj = JSON.parse(response.body)
		@result = responseObj['results'][0]
	end
	def view; end
	def edit; end
	def search_params
		params.permit(:search)
	end
end

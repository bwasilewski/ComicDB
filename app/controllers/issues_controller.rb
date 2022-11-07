class IssuesController < ApplicationController
	def new
	end
	def search; end
	def get_results
		url = "https://comicvine.gamespot.com/api/search/?format=json&api_key=#{ENV['COMICVINE_KEY']}&query=%22Amazing%20Spiderman%20issue%2036%22&resources=issue"
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

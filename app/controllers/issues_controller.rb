class IssuesController < ApplicationController
	before_action :require_user_logged_in!
	def new
	end
	def search; end
	def get_results
		url = "https://comicvine.gamespot.com/api/search/?format=json&api_key=#{ENV['COMICVINE_KEY']}&query=#{search_params['query']}&resources=issue"
		response = RestClient.get(url)
		responseObj = JSON.parse(response.body)
	end
	def view
		url = "https://comicvine.gamespot.com/api/issue/#{view_params['id']}?format=json&api_key=#{ENV['COMICVINE_KEY']}"
		
		response = RestClient.get(url)
		responseObj = JSON.parse(response.body)
		@result = responseObj['results']	
	end
	def edit; end
	def search_params
		params.permit(:query)
	end
	def view_params
		params.permit(:id)
	end
end

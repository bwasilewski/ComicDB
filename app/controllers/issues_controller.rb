class IssuesController < ApplicationController
	before_action :require_user_logged_in!
	def new
	end
	def search; end
	def get_results
		url = "https://comicvine.gamespot.com/api/search/?format=json&api_key=#{ENV['COMICVINE_KEY']}&query=#{search_params['query']}&resources=issue"
		response = RestClient.get(url)
		responseObj = JSON.parse(response.body)
		@results = responseObj['results']
	end
	def view
		issueUrl = "https://comicvine.gamespot.com/api/issue/#{view_params['id']}?format=json&api_key=#{ENV['COMICVINE_KEY']}"
		
		issueResponse = RestClient.get(issueUrl)
		issueResponseObj = JSON.parse(issueResponse.body)
		@result = issueResponseObj['results']	

		volumeUrl = "#{@result['volume']['api_detail_url']}?format=json&api_key=#{ENV['COMICVINE_KEY']}"
		
		volumeResponse = RestClient.get(volumeUrl)
		volumeResponseObj = JSON.parse(volumeResponse.body)
		@volume = volumeResponseObj['results']
	end
	def edit; end
	def search_params
		params.permit(:query)
	end
	def view_params
		params.permit(:id)
	end
end

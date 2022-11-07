class SeriesController < ApplicationController
	before_action :require_user_logged_in!
	def new; end
	def view; end
	# def create; end
end

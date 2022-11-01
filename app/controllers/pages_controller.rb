class PagesController < ApplicationController
	def home
		render template: "pages/home.html.erb"
	end

	def about
		render template: "pages/about.html.erb"
	end
end

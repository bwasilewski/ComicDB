class WelcomeMailer < ApplicationMailer
	def welcome_mail
		@user = params[:user]
		@url = 'http://localhost:3000/sign_in'
		mail(to: @user.email, subject: 'Welcome to ComicDB!')
	end
end

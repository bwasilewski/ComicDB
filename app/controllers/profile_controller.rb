class ProfileController < ApplicationController
	before_action :require_user_logged_in!
	def view; end
	def edit; end
	def update
		if Current.user.update(profile_params)
			redirect_to root_path, notice: 'Your profile has been updated'
		else
			render :edit
		end
	end
	# private
	def profile_params
		params.require(:user).permit(:avatar, :display_name)
	end
end
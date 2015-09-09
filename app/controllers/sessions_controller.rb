class SessionsController < ApplicationController
	def create
		@user = User.find_or_create_with_omniauth
		self.current_user = @user
		redirect_to '/'
	end

	private

	def auth_hash
		request.env['omniauth.auth']
	end
end

class UsersController < ApplicationController
	def index
	end

	def show
		@user = current_user
		@posts = current_user.posts
	end

end

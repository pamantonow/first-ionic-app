class UsersController < ApplicationController
	protect_from_forgery

	def new
		render :'user/new'
	end

	def create
		@new_user = User.new(user_params)
		if @new_user.save
			redirect_to "/"
		else
		@errors = @new_user.errors.full_messages
		render :'user/new'
		end
	end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password	)
  end

  
end
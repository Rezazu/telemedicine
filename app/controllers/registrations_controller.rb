class RegistrationsController < ApplicationController
    # instantiates new user
    protect_from_forgery with: :null_session
    def new
      @user = User.new
    end
    def create
      @user = User.new(user_params)
      if @user.save
      # stores saved user id in a session
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Successfully created account'
      else
        render :new
      end
    end
    private
    def user_params
      # strong parameters
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
  end
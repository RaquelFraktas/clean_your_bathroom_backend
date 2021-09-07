class UsersController < ApplicationController
  # wrap_parameters :user, include: [:username, :password]

  def index
    users= User.all
    render json: users
  end

  def create
    user= User.find_or_create_by(user_params)
    if user.save
      session[:id] = user.id
    end
    byebug
    #posting data wouldnt work without this method
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
  
end

class UsersController < ApplicationController
  # wrap_parameters :user, include: [:username, :password]

  def index
    users= User.all
    render json: users
  end

  def create
    user= User.find_or_create_by(:username)
    render json: user
  end

  private

  def user_params
    params.permit(:username)
  end
  
end

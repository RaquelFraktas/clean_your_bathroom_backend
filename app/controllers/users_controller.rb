class UsersController < ApplicationController

  def index
    users= User.all
    render json: users
  end

  def create
    user= User.find_or_create_by(user_params)
   
    render json: user
  end

  def update
    user= User.find(params[:id])
    byebug
    # Score.new(points: )
    game_points = [points]
    user.scores << game_points
    render json: user
  end


  # def current_user
  #   return 
  # end

  private

  def user_params
    params.permit(:username)
  end
  
end

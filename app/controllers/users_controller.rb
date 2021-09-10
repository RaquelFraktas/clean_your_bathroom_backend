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
    score = Score.new(points: params[:_json])
    accumulated_score += score.to_i
    # game_over = params[:]
    byebug
    if accumulated_score == 700 || game_over
      user.Score.create(points: accumulated_score)
    end
    # game_points = [points]
    # user.scores << game_points
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

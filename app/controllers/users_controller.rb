class UsersController < ApplicationController

  def index
    users= User.all
    render json: users
  end

  def create
    user= User.find_or_create_by(user_params)
    render json: user
  end

  # def update
  #   user= User.find(params[:id])
  #   score = Score.find_or_create_by(points: params[:_json])
  #   # this needs to be unique by user- check the find or create under that user.id
  #   if !user.scores.include?(score)
  #     user.scores << score
  #     #dont really need this line if we are using find_or_create_by
  #   end
  #   byebug
  #   render json: user
  # end


  private

  def user_params
    params.permit(:username)
  end
  
end

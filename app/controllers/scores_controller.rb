class ScoresController < ApplicationController

  def index
    scores= Score.all
    render json: scores
  end

  def create
    user= User.find(params[:user][:id])
    score = Score.new(points: params[:allPoints])
    if !user.scores.find_by(points: score.points) && score.points != 0
      user.scores << score
      user.save
    end
      render json: score
  end
    

end

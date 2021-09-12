class ScoreSerializer < ActiveModel::Serializer
    attributes :id, :points, :user
  end
class Score < ApplicationRecord
  belongs_to :user
  validates_presence_of :points
end

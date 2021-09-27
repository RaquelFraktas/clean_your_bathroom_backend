class User < ApplicationRecord
    has_many :scores
    # validates :username, presence: true
    # validates :username, length: {maximum: 11}
end

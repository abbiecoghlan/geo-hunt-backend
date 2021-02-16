class User < ApplicationRecord
    has_many :attempts
    has_many :puzzles, through: :attempts
end

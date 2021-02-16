class Puzzle < ApplicationRecord
    has_many :attempts
    has_many :users, through: :attempts
    has_many :clues
end

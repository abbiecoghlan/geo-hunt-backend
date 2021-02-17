class User < ApplicationRecord
    has_many :attempts
    has_many :puzzles, through: :attempts

    validates :username, uniqueness: true
    validates :username, presence: true
    validates :name, presence: true

    has_secure_password

end

class UsersController < ApplicationController
    def index
        users = User.all

        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        
        render json: user
    end

    def login
        # byebug
        user = User.find_by(username: params['username'])

        if user.try(:authenticate, params['password'])
            render json: user
        end
        # render json: user
    end

    def create
        user = User.new(name: params['name'], username: params['username'], password: params['password'])

        if user.save
            render json: user
        end
    end

    def profile

        user = User.find_by(id: params['id'])

        puzzles = user.uniqPuzzles
        attempts = user.attempts
        # byebug
        render json: {user: user, puzzles: puzzles, attempts: attempts}

    end

end

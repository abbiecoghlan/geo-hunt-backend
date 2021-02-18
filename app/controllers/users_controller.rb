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
        user = User.find_by(username: params[:username])

        if user.try(:authenticate, params[:password])
            render json: user
        end
        render json: user
    end


end

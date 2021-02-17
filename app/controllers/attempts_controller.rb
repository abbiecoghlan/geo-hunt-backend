class AttemptsController < ApplicationController
    def index
        attempts = Attempt.all

        render json: attempts
    end

    def show
        attempt = Attempt.find_by(id: params[:id])
        
        render json: attempt
    end

    def create
        byebug
        attempt = Attempt.new(puzzle_id: params["puzzleId"].to_i)
    end

    

end

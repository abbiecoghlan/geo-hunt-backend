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
        attempt = Attempt.new(puzzle_id: params["puzzleId"].to_i, user_id: params["userId"].to_i)
        attempt.status = 'failed'

        attempt.save
        # add validations
        render json: attempt
    end

    

end

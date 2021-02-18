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
        attempt.save
        # add validations
        render json: attempt
    end

    def update

        attempt = Attempt.find_by(id: params['id'])
        attempt.status = params['status']
        attempt.time_taken = parse_time(params['timeTaken'])

        attempt.save

        render json:attempt
    end

    def parse_time(time_string)
        count = 0
        seconds = 0
        array = time_string.split(':')
        while count < time_string.length do
            if count == 0
                seconds += array[count].to_i * 3600
            end

            if count == 1
                seconds += array[count].to_i * 60
            end
            
            if count == 2
                seconds += array[count].to_i
            end
            count += 1
        end
        seconds
    end

end

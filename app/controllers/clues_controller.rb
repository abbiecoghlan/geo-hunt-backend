class CluesController < ApplicationController
    def index
        clues = Clue.all

        render json: clues
    end


end

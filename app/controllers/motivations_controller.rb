class MotivationsController < ApplicationController

    def index
        @motivations = Motivation.order(:name)
    end

    def show 
    end

end

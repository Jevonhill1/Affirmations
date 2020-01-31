class MeditationsController < ApplicationController

    def index
        @meditations = Meditation.all
      end

      def show
      end
      
end

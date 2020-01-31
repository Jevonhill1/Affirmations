class AudioController < ApplicationController
    def index
        @audio = Audio.all
      end

      def show
      end
end

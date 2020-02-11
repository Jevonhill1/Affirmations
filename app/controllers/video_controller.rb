class VideoController < ApplicationController
    before_action :set_video, only: [:index, :show]

    def index
        @videos = Video.all
    end

    def show
    end

    private

    def set_video
        
        @video = Video.find(params[:id])
    end

    def video_params
        params.require(:video).permit(:title, :description,  :name, :clip, :thumbnail)
    end
end

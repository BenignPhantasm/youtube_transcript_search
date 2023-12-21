class VideosController < ApplicationController
    def show
        @video = Video.find(params[:id])
        @transcript = @video.transcript
    end
end
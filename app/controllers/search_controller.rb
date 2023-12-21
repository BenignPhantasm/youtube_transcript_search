class SearchController < ApplicationController
    def index
      @videos = Video.all
    end
  end
module Api
	class TracksController < ApplicationController

		respond_to :json

	  def index
	  	render json: Track.all
	  end

	  def show
	  	render json: Track.find(params[:id])
	  end

	  

	  def default_serializer_options
	  	{ root: false }
	  end
	end
end
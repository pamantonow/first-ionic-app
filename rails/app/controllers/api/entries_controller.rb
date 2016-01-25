module Api
	class EntriesController < ApplicationController
		respond_to :json

	  def index
	  	@track = Track.find(params[:track_id])
	  	render json: @track.entries
	  end

	  def show
	  	render json: Entry.find(params[:id])
	  end

	  

	  def default_serializer_options
	  	{ root: false }
	  end
	end
end
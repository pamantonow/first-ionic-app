class TracksController < ApplicationController
	
#This is a get in ruby on rails
	
	def index
		p params

		@tracks = Track.all
		render json: @tracks
	end

	def show
		p params
		@track = Track.find(params[:trackId])
		render json: @track
	end

	

end

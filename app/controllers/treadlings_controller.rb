class TreadlingsController < ApplicationController
	def index 
		@treadlings = Treadling.all
	end

	def create 
		treadling = Treadling.create!(params.require(:treadling).permit(:sequence))
		redirect_to drafts_url
	end

	def show
		@treadling = Treadling.find(params[:id])
	end

end

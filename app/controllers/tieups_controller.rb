class TieupsController < ApplicationController
	def index
		@tieups = Tieup.all
	end

	def create
		tieup = Tieup.create!(params.require(:tieup).permit(:sequence))
		redirect_to drafts_url
	end

	def show
		@tieup = Tieup.find(params[:id])
	end
end

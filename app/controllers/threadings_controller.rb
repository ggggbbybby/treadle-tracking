class ThreadingsController < ApplicationController
	def index
		@threadings = Threading.all
	end

	def create
		threading = Threading.create!(params.require(:threading).permit(:sequence))
		redirect_to drafts_url
	end

	def show
		@threading = Threading.find(params[:id])
	end
end
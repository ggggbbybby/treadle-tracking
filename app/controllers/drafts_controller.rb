class DraftsController < ApplicationController
	def index
		@drafts = Draft.all
		@tieups = Tieup.all
		@threadings = Threading.all
		@treadlings = Treadling.all

		respond_to do |format|
			format.html
			format.json { render json: @drafts}
		end
	end

	def create
		draft_params = params.require(:draft).permit(:draft_name, :tieup_id, :threading_id, :treadling_id)
		logger.debug("creating draft from params #{draft_params.inspect}")
		draft = Draft.create!(draft_params)
		redirect_to draft_url(draft)
	end

	def show
		@draft = Draft.find(params[:id])
	end


end
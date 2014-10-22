class DraftsController < ApplicationController
	def index
		@drafts = Draft.all
	end

	def create
		draft = Draft.create!(params[:draft])
		redirect_to draft_url(draft)
	end

end
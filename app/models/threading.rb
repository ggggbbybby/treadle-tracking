class Threading < ActiveRecord::Base
	has_many :drafts

	def expanded
		@_expanded = SequenceExpander.new(sequence).expand
		@_expanded
	end

end
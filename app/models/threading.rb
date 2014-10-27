class Threading < ActiveRecord::Base
	has_many :drafts

	def sequence_array
		# turn a string "1,2,3,4" into an array of ints
		sequence.split(",").map(&:to_i)
	end

end
class Draft < ActiveRecord::Base
	belongs_to :tieup
	belongs_to :treadling
	belongs_to :threading

	def shafts
		threading.sequence_array.max
	end

	def treadles 
		tieup.sequence_array.size
	end
	
end
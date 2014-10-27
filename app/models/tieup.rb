class Tieup < ActiveRecord::Base
	has_many :drafts

	def shaftwise_sequence
		# complicated. A tieup is normally an array of tuples of shafts that are lifted/depressed when a treadle is stepped on. 
		# we want to render an array of objects with the shaft number and the treadles that are tied to it.
		# I have zero desire to write this method in coffescript so it lives here even though it's mostly a rendering method.

		shaftwise = sequence_array.each_with_index.inject({}) do |memo, (shafts, treadle_number)|
			shafts.each do |shaft|
				memo[shaft] ||= []
				memo[shaft] << treadle_number + 1 # treadle numbers don't start at zero, for reasons.
			end
			memo
		end

		# convert the hash to an array of hashes
		shaftwise.map do |shaft, treadles|
			{ :shaft => shaft, :treadles => treadles }
		end
	end

	def sequence_array
		# turn "[1,2]\n[2,3]\n[3,4]\n[1,4]" into [[1,2], [2,3], [3,4], [1,4]]
		sequence.split("\n").map{ |seq| seq.gsub(/[\[\]\s]/, "").split(",").map(&:to_i) }
	end
end

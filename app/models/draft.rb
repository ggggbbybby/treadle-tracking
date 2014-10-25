class Draft < ActiveRecord::Base
	belongs_to :tieup
	belongs_to :treadling
	belongs_to :threading
end
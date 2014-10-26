json.draft do 
	json.extract! @draft, :id, :draft_name, :shafts
  	json.url draft_url(@draft, format: :json)
  	json.tieup do 
  		json.extract! @draft.andand.tieup, :id, :sequence
  	end
  	json.threading do 
		json.id 		@draft.threading.andand.id
		json.sequence 	@draft.threading.andand.sequence_array
	end
	json.treadling do 
		json.id 		@draft.treadling.andand.id
		json.sequence 	@draft.treadling.andand.sequence
	end
end
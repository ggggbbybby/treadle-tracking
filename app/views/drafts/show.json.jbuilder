json.draft do 
	json.extract! @draft, :id, :draft_name
  	json.url draft_url(@draft, format: :json)
  	json.tieup do 
  		json.extract! @draft.andand.tieup, :id, :sequence
  	end
end
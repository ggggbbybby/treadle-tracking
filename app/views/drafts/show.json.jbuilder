json.draft do 
  json.id @draft.id
  json.draft_name, @draft.draft_name
  json.url draft_url(@draft, format: :json)
end
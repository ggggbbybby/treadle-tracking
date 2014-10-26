json.array!(@drafts) do |draft|
  json.extract! draft, :name, :id
  json.url draft_url(draft, format: :json)
end
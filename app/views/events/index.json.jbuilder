json.array!(@events) do |event|
  json.extract! event, :id, :headline, :source
  json.url event_url(event, format: :json)
end
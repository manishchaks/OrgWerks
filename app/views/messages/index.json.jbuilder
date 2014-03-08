json.array!(@messages) do |message|
  json.extract! message, :id, :title, :content, :read
  json.url message_url(message, format: :json)
end

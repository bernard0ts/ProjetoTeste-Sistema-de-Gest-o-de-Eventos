json.extract! event, :id, :description, :detail, :status, :created_at, :updated_at
json.url event_url(event, format: :json)

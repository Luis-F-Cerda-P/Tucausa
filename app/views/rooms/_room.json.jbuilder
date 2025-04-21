json.extract! room, :id, :description, :court_id, :created_at, :updated_at
json.url room_url(room, format: :json)

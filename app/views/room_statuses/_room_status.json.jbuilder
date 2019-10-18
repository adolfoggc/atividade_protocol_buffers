json.extract! room_status, :id, :ac_temperature, :ac_status, :tv_status, :tv_channel, :lamp_status, :created_at, :updated_at
json.url room_status_url(room_status, format: :json)

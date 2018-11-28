json.extract! client, :id, :name, :age, :condition, :exercise_id, :food_id, :weight, :height, :created_at, :updated_at
json.url client_url(client, format: :json)

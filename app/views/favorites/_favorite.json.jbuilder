json.extract! favorite, :id, :user, :recipe, :created_at, :updated_at
json.url favorite_url(favorite, format: :json)
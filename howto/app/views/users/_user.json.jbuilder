json.extract! user, :id, :username, :password_digest, :email, :is_teacher, :is_admin, :created_at, :updated_at
json.url user_url(user, format: :json)

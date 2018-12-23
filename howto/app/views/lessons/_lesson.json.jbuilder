json.extract! lesson, :id, :name, :short_desc, :long_desc, :grade_level, :subject, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)

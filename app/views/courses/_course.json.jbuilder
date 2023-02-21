json.extract! course, :id, :title, :desc, :start_date, :end_date, :created_at, :updated_at
json.url course_url(course, format: :json)

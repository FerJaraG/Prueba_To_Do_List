json.extract! task, :id, :title, :description, :image, :created_at, :updated_at
json.url task_url(task, format: :json)

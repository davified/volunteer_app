json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :categories, :skills, :images
  json.url task_url(task, format: :json)
end

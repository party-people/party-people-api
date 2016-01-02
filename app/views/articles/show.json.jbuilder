json.article do
  json.call(@article, :id, :title, :description, :views)
end
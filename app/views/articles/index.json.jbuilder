json.articles @articles do |article|
  json.call(article, :id, :title, :description, :views)
end

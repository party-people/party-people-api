json.extract! article, :id, :title, :description, :views
json.category do
  json.partial! article.category
end
json.contributor do
  json.partial! article.user
end

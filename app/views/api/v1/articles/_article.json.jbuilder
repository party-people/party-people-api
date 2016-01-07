json.extract! article, :id, :title, :description, :views
json.contributor do
  json.partial! article.user
end

json.articles @articles do |article|
  json.partial! article
end

json.categories @categories do |category|
  json.call(category, :id, :title, :description)
end

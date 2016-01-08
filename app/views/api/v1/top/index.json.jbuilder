json.articles @articles do |article|
  json.partial! article
end

json.pickup @pickup do |article|
  json.partial! article
end

json.ranking @ranking do |article|
  json.partial! article
end

json.categories @categories do |category|
  json.call(category, :id, :title, :description)
end

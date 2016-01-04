json.categories @categories do |category|
  json.call(category, :id, :title, :description)
end

json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :category_id, :taken
  json.url book_url(book, format: :json)
end

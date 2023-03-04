json.news @news_articles do |article|
  json.slug article.id
  json.title article.title
  json.content article.content.body
  json.author article.author
  json.day article.published_at.day
  json.month article.published_at.strftime("%b")
  json.image url_for(article.image)
end

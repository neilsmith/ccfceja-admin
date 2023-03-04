class NewsArticle < ApplicationRecord
  # Extensions
  has_rich_text :content

  def to_s
    title
  end
end

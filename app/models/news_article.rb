class NewsArticle < ApplicationRecord
  # Extensions
  has_rich_text :content
  has_one_attached :image

  def to_s
    title
  end
end

class Admin::NewsArticlesController < Admin::BaseController
  private

  def model
    NewsArticle
  end

  def clean_params
    params.require(:news_article).permit(:title, :author, :published_at, :content)
  end
end

class Api::V1::TopController < ApiController
  def index
    @articles = Article.published.newest.page(0)
    @pickup   = Article.published.limit(3)
    @ranking  = Article.published.limit(5)
    @categories = Category.all
  end
end

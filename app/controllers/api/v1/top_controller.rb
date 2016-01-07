class Api::V1::TopController < ApiController
  def index
    @articles = Article.published.newest.page(0)
    @categories = Category.all
  end
end

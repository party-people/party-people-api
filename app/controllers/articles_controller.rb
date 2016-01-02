class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
    @articles = Article.published.page(params[:page])
  end

  def show
    @article.increment!(:views)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end
end

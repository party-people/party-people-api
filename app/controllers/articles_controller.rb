class ArticlesController < ApplicationController
  def index
    @articles = Article.published.page(params[:page])
  end

  def show
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
end

class Api::V1::Articles::ItemsController < ApplicationController
  before_action :doorkeeper_authorize!
  before_action :set_article, only: [:show]
  before_action :set_item, only: [:update, :destroy]

  def create
    @article.items.build(item_params)
  end

  def update
    @item.update(item_params)
  end

  def destroy
    @item.destroy
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(
      :type, :title, :description, :image_url, :thumbnail_url, :source, :source_url, :snippet
    )
  end
end

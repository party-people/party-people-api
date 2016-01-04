class Api::V1::Articles::ItemsController < ApplicationController
  before_action :doorkeeper_authorize!
  before_action :set_article

  def create
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

module Api
  module V1
    class ArticlesController < ApiController
      before_action :doorkeeper_authorize!, only: [:new, :create, :edit, :update, :destroy]
      before_action :set_article, only: [:show, :edit, :update, :destroy]

      def index
        @articles = Article.published.page(params[:page])
      end

      def show
        @article.increment!(:views)
      end

      def new
        unless @article = current_resource_owner.articles.created.first
          @article = current_resource_owner.articles.build
        end
      end

      def create
        @article = current_resource_owner.articles.build(article_params)
      end

      def edit
      end

      def update
        @article.update(article_params)
      end

      def destroy
        @article.destroy
      end

      private
      def article_params
        params.require(:article).permit(:title, :description)
      end

      def set_article
        @article = Article.find(params[:id])
      end
    end
  end
end

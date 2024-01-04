class ArticlesController < ApplicationController
    #article create
    def new
        @article = Article.new
    end

    def create
        @article = Article.create(article_params)
        redirect_to articles_path
        # redirect_to @article, notice: 'Article success'
        # if @article.save
        #     redirect_to @article, notice: 'Article success'
        # else
        #     render :new
        # end
    end 

    #index page
    def index
        @articles = Article.all
    end

    #show article
    def show
        @article = Article.find(params[:id])
    end

    #edit and update article
    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        redirect_to articles_path
    end

    #delete article
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path, notice: 'Article success delete'
    end

    private

def article_params
  params.require(:article).permit(:title, :content)
end
end

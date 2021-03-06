class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    #permit makes us define what inputs are allowed
    @article = Article.new(params.require(:article).permit(:title, :text))
    if @article.save 
      redirect_to @article
    else
      render 'new'
    end
  end
end

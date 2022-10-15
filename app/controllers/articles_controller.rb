class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # Controller action variables can be used as reference in the view files (.erb)
  def index
    @articles = Article.all #fetch all records of Article
  end

  def show
     #show records of an article with a specific ID
  end

  def new
    @article = Article.new 
  end
  
  def create
    @article = Article.new(article_params)

    if @article.save
        redirect_to @article, notice: "Restaurant successfully added"
    else
        render :new
    end
  end

  def edit
  end

  def update

    if @article.update(article_params)
      redirect_to @article, notice: "Restaurant successfully updated"
    else
      render :edit
    end

  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title,:description,:body,)
  end

end

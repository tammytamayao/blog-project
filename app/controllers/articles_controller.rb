class ArticlesController < ApplicationController

  # Controller action variables can be used as reference in the view files (.erb)

  #to implement set_article to the following actions only if the answer is truthy
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  #fetch all records of Article
  def index
    @articles = Article.all
  end

  #show records of an article with a specific ID
  def show
  
  end

  #post newly created article
  def new
    @article = Article.new 
  end
  
  #create new article through a form and saves the article in the database
  def create
    @article = Article.new(article_params)

    if @article.save
        redirect_to @article, notice: "Entry successfully added"
    else
        render :new
    end
  end

  #edit existing article through a form
  def edit
  end

  #saves the edited article in the database
  def update

    if @article.update(article_params)
      redirect_to root_path, notice: "Entry successfully updated"
    else
      render :edit
    end

  end

  #deletes the article
  def destroy
    @article.destroy
    redirect_to root_path, notice: "Entry successfully deleted"
  end

  private

  #Check if a blog with a specific id exists in the database. If not, it returns nil (falsy)
  def set_article
    @article = Article.find(params[:id])
  end

  #filters parameter to be accepted for security purposes
  def article_params
    params.require(:article).permit(:title, :body)
  end

end

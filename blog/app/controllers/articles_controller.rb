class ArticlesController < ApplicationController
  def index #the view is rendered in index.html.erb
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # new action will be rendered in app/views/articles/new.html.erb
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      #redirect to article's page: "http://localhost:3000/articles/#{@article.id}"
      redirect_to @article
    else
      #render: app/views/articles/new.html.erb
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :status)
  end
end

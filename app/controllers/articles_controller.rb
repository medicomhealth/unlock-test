class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.where("id = #{params[:id]}").first
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: params[:article][:title], body: params[:article][:body])

    if @article.save
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end

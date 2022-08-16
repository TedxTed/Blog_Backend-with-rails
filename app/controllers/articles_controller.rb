class ArticlesController < ApplicationController
  before_action :find_article, only: %i[update edit show destroy]
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    redirect_to blogs_path, notice: '新增文章' if @article.save
  end

  def edit
    # render html: params
    # @article = Article.find(params[:id])
  end

  def show; end

  def update
    render html: params
    # if @article.update
    #   redirect_to blogs_path
    # else
    #   render :edit
    # end
  end

  def destroy
    @article.update(deleted_at: Time.now)
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end

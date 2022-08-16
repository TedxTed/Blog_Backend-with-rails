class BlogsController < ApplicationController
  def index
    @articles = Article.not_deleted_yet.all
  end
end

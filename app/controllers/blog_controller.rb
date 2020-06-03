class BlogController < ApplicationController
  def index
    @blogs = Blog.order(:date).all
  end

  def show
    @content = Blog.find_by_title(params[:title]).content_parsed
  end
end

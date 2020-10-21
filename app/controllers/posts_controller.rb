class PostsController < ApplicationController
  def index
  end

  def dashboard
    @post = Post.new
  end

  def create 
    @post = Post.new(title: params[:title], image_url: params[:image_url], content: params[:content])
  end
end

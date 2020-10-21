class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def dashboard
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_dashboard_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :image_url, :content)
  end
end

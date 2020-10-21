class PostsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def dashboard
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)
    @post.save
  end

  private
  def post_params
    params.require(:post).permit(:title, :image_url, :content)
  end
end

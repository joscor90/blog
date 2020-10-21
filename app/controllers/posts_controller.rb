class PostsController < ApplicationController
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def dashboard
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)
    @post.content = @post.content.gsub("chau", "")
    @post.save
  end

  private
  def post_params
    params.require(:post).permit(:title, :image_url, :content)
  end
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :dashboard
end

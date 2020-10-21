class PostsController < ApplicationController
  def index
  end

  def dashboard
    @post = Post.new
  end
end

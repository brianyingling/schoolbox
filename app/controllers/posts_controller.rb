class PostsController < ApplicationController
  def index
    @posts = @auth.posts.all
  end
  def new
    @post = Post.new
    @klasses = @auth.courses.map {|course| course.klasses }
  end
  def create
    @post = Post.create(params[:post])
  end
  def show
    binding.pry
  end
  def edit
  end
  def update
  end
  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to posts_path
  end
end
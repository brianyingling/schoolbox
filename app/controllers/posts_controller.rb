class PostsController < ApplicationController
  def index
    @posts = @auth.posts.order('created_at desc')
  end
  def new
    @klasses = @auth.courses.map {|course| course.klasses }
    @post = Post.new
  end
  def create
    @post = Post.create(params[:post])
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to post.teacher
  end
end
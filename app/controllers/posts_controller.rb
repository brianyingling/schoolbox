class PostsController < ApplicationController
  def index
    @posts = @auth.posts.order('created_at desc')
  end
  def new
    @klasses = @auth.courses.map {|course| course.klasses }
    @post = Post.new
    respond_to do |format|
      format.html {render :new}
      format.js
    end
  end
  def create
    @post = Post.create(params[:post])
    @post.postdate = Time.now
    @post.save
  end
  def show
  end
  def edit
    @post = Post.find(params[:id])
    render :new
  end
  def update
    post = Post.find(params[:id])
    post.update_attributes(params[:post])
    redirect_to root_path
  end
  def destroy
    post = Post.find(params[:id])
    post.delete
    redirect_to posts_path
  end
end
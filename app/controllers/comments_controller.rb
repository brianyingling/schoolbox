class CommentsController < ApplicationController
  def index
  end
  def new
    @post = Post.find(params[:post_id])
    @student = Student.find(params[:student_id])
    @comment = Comment.new
  end
  def create
    comment = Comment.create(params[:comment])
    redirect_to comment.student
  end
end
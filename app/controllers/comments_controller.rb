class CommentsController < ApplicationController
  def index
  end
  def new
    @p = params[:kp]
    @post_id = params[:post_id]
    @post = Post.find(params[:post_id])
    @student = Student.find(params[:student_id])
    @comment = Comment.new

  end
  def create
    comment = Comment.create(params[:comment])
    redirect_to comment.student
  end
  def edit
    @comment = Comment.find(params[:id])
    @student = @comment.student
    @post = @comment.post
    @comment_id = @comment.id
    # render :new
  end
  def update
    comment = Comment.find(params[:id])
    comment.update_attributes(params[:comment])
    redirect_to Student.find(params[:comment][:student_id])
  end
  def destroy
    comment = Comment.find(params[:id])
    comment.delete
    redirect_to comment.student
  end
end
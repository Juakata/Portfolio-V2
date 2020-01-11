class CommentsController < ApplicationController
  def index
    @comment = Comment.new
  end

  def create
    @user = User.first
    @comment = @user.comments.build(comment_params)
    if @comment.save
      flash[:notice] = "Thanks for contacting me!"
      redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :body)
  end
end

class CommentsController < ApplicationController
  before_action :maintenance?, except: [:all_messages]
  def index
    @comment = Comment.new
    @user = User.first
  end

  def create
    @user = User.first
    @comment = @user.comments.build(comment_params)
    if @comment.save
      respond_to do |format|
        format.html { redirect_to root_path }
      format.js
    end
    else
      render 'index'
    end
  end

  def all_messages
    @messages = User.first.comments.order(created_at: :desc)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :body)
  end

  def maintenance?
    redirect_to main_path if user.maintenance
  end
end

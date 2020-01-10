class StaticPagesController < ApplicationController
  def home
    @comment = Comment.new
  end
end

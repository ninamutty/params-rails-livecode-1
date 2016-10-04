class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @comment = Comment.new
    @post_method = :post
    @post_path = create_comment_path
  end

  def create
    @params = params
    @comment = Comment.new
    @comment.author = params[:comment][:author]
    @comment.body = params[:comment][:body]
    @comment.post_id = @mypost[:id]
    @comment.save
    redirect_to index_path
  end

  def destroy
  end
end

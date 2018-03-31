class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @post.comments.create(comment_params)
    redirect_to_post
  end

  def edit
  end

  def update
    @comment.update(comment_params)
    redirect_to_post
  end

  def destroy
    @comment.destroy
    redirect_to_post
  end



  private

    def set_post
      @post = Post.find(params[:post_id])
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def redirect_to_post
      redirect_to @post
    end

    def comment_params
      params.require(:comment).permit(:name, :content)
    end
end

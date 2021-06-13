class PostsController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true)
    # @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    post = Post.new(post_params)
    post.save!
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:tax, :description)
  end
end

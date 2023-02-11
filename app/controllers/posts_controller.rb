class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).page(params[:page]).per(5).sorted
    # @posts = Post.all
    @parents = Category.where(ancestry: nil)
  end

  def show
    @post = Post.joins(:category).find(params[:id])
    @comments = @post.comments.includes(:user)
    @comment = @post.comments.build
    @like = Like.new
  end

  def new
    @post = Post.new
    @parents = Category.where(ancestry: nil)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_url
  end

  def update
    post = Post.find(params[:id])
    post.update!(post_params)
    redirect_to post_url
  end

  def create
    @post = Post.new(post_params.merge(user_id: current_user.id))
    if @post.save
      redirect_to posts_url
    else
      render :new
    end
  end

  def search
    @parents = Category.where(ancestry: nil)
    @category = Category.find_by(id: params[:id])

    if @category.ancestry == nil
      category = Category.find_by(id: params[:id]).indirect_ids
      if category.empty?
        @posts = Post.where(category_id: @category.id).order(created_at: :desc)
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :category_id)
  end
end

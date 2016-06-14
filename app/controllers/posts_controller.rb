class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      flash[:notice] = "Post created successfully!"
      redirect_to post_path(@post)
    else
      flash[:alert] = @post.errors.full_messages.join(". ")
      render :new
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post deleted successfully!"
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post was updated successfully!"
      redirect_to post_path(@post)
    else
      flash[:alert] = @post.errors.full_messages.join(". ")
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :purpose, :description, :date, :image, :created_at, :updated_at, :user_id)
  end
end
